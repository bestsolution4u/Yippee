package com.here.yippee;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;

import android.Manifest;
import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.PointF;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.here.android.mpa.cluster.ClusterLayer;
import com.here.android.mpa.common.GeoBoundingBox;
import com.here.android.mpa.common.GeoCoordinate;
import com.here.android.mpa.common.GeoPosition;
import com.here.android.mpa.common.Image;
import com.here.android.mpa.common.LocationDataSourceHERE;
import com.here.android.mpa.common.MapEngine;
import com.here.android.mpa.common.MapSettings;
import com.here.android.mpa.common.MatchedGeoPosition;
import com.here.android.mpa.common.OnEngineInitListener;
import com.here.android.mpa.common.PositioningManager;
import com.here.android.mpa.guidance.AudioPlayerDelegate;
import com.here.android.mpa.guidance.NavigationManager;
import com.here.android.mpa.guidance.VoiceCatalog;
import com.here.android.mpa.guidance.VoiceSkin;
import com.here.android.mpa.mapping.AndroidXMapFragment;
import com.here.android.mpa.mapping.Map;
import com.here.android.mpa.mapping.MapMarker;
import com.here.android.mpa.mapping.MapRoute;
import com.here.android.mpa.mapping.MapState;
import com.here.android.mpa.prefetcher.MapDataPrefetcher;
import com.here.android.mpa.routing.CoreRouter;
import com.here.android.mpa.routing.Route;
import com.here.android.mpa.routing.RouteOptions;
import com.here.android.mpa.routing.RoutePlan;
import com.here.android.mpa.routing.RouteResult;
import com.here.android.mpa.routing.RouteTta;
import com.here.android.mpa.routing.RouteWaypoint;
import com.here.android.mpa.routing.Router;
import com.here.android.mpa.routing.RoutingError;
import com.here.android.positioning.StatusListener;
import com.here.msdkui.common.DistanceFormatterUtil;
import com.here.msdkui.common.measurements.UnitSystem;
import com.here.msdkui.guidance.GuidanceManeuverData;
import com.here.msdkui.guidance.GuidanceManeuverListener;
import com.here.msdkui.guidance.GuidanceManeuverPresenter;
import com.here.msdkui.guidance.GuidanceManeuverView;
import com.here.yippee.helper.PermissionHelper;
import com.here.yippee.util.ConnectionUtil;

import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class MapActivity extends AppCompatActivity implements PositioningManager.OnPositionChangedListener, Map.OnTransformListener {

    private String LOGTAG = "Yippee-MapActivity";

    // permission related
    private final static int REQUEST_CODE_ASK_PERMISSIONS = 2222;
    private static final String[] RUNTIME_PERMISSIONS = {
            Manifest.permission.ACCESS_FINE_LOCATION,
            Manifest.permission.WRITE_EXTERNAL_STORAGE,
            Manifest.permission.INTERNET,
            Manifest.permission.ACCESS_WIFI_STATE,
            Manifest.permission.ACCESS_NETWORK_STATE,
            Manifest.permission.READ_PHONE_STATE,
    };

    // ui elements
    private TextView tvStreet, tvManeuverDistance, tvManeuverDistanceUnit, tvSpeed, tvSpeedUnit, tvSpeedLimit, tvTime;
    private ImageView ivManeuverIcon;
    private LinearLayout llMenu, llZoomMinus, llZoomPlus, llLanguage, llDownloader;
    private Map map;
    private GuidanceManeuverView guidanceManeuverView;


    // location related
    private double destLat, destLng, curLat, curLng, srcLat = -9999, srcLng = -9999;
    private LocationManager locationManager;
    private LocationDataSourceHERE mHereLocation;

    // map related
    private Route route;
    private CoreRouter coreRouter;
    private MapRoute currentMapRoute;
    public List<RouteResult> lastCalculatedRouteResults = new ArrayList<>();
    private GuidanceManeuverPresenter guidanceManeuverPresenter;
    private PositioningManager positioningManager;
    private NavigationManager navigationManager;
    private boolean fetchingDataInProgress = false;
    private boolean mTransforming;
    private Runnable mPendingUpdate;

    @SuppressLint("MissingPermission")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_map);

        // get destination location
        Bundle b = getIntent().getExtras();
        if (b != null) {
            destLat = b.getDouble("latitude");
            destLng = b.getDouble("longitude");
        }

        Intent startIntent = new Intent(MapActivity.this, ForegroundService.class);
        startIntent.setAction(ForegroundService.START_ACTION);
        getApplicationContext().startService(startIntent);

        if (hasPermissions(this, RUNTIME_PERMISSIONS)) {
            initializeElements();
        } else {
            ActivityCompat
                    .requestPermissions(this, RUNTIME_PERMISSIONS, REQUEST_CODE_ASK_PERMISSIONS);
        }
    }

    private static boolean hasPermissions(Context context, String... permissions) {
        if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && permissions != null) {
            for (String permission : permissions) {
                if (ActivityCompat.checkSelfPermission(context, permission)
                        != PackageManager.PERMISSION_GRANTED) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions,
                                           @NonNull int[] grantResults) {
        switch (requestCode) {
            case REQUEST_CODE_ASK_PERMISSIONS: {
                for (int index = 0; index < permissions.length; index++) {
                    if (grantResults[index] != PackageManager.PERMISSION_GRANTED) {
                        if (!ActivityCompat
                                .shouldShowRequestPermissionRationale(this, permissions[index])) {
                            /*Toast.makeText(this, "Required permission " + permissions[index]
                                            + " not granted. "
                                            + "Please go to settings and turn on for this app",
                                    Toast.LENGTH_LONG).show();*/
                        } else {
                            Toast.makeText(this, "Required permission " + permissions[index]
                                    + " not granted", Toast.LENGTH_LONG).show();
                        }
                    }
                }

                initializeElements();
                break;
            }
            default:
                super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }

    private void initializeElements() {
        // set ui elements
        tvStreet = findViewById(R.id.tvStreet);
        tvManeuverDistance = findViewById(R.id.tvManeuverDistance);
        tvManeuverDistanceUnit = findViewById(R.id.tvManeuverDistanceUnit);
        ivManeuverIcon = findViewById(R.id.ivManeuverIcon);
        tvSpeed = findViewById(R.id.tvSpeed);
        tvSpeedUnit = findViewById(R.id.tvSpeedUnit);
        tvSpeedLimit = findViewById(R.id.tvSpeedLimit);
        tvTime = findViewById(R.id.tvTime);
        llMenu = findViewById(R.id.llMenu);
        llMenu.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        guidanceManeuverView = findViewById(R.id.guidanceManeuverView);
        llZoomMinus = findViewById(R.id.llZoomMinus);
        llZoomMinus.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (map != null) {
                    map.setZoomLevel(map.getZoomLevel() > 0 ? map.getZoomLevel() - 1 : 0);
                }
            }
        });
        llZoomPlus = findViewById(R.id.llZoomPlus);
        llZoomPlus.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (map != null) {
                    map.setZoomLevel(map.getZoomLevel() + 1);
                }
            }
        });
        llLanguage = findViewById(R.id.llLanguage);
        llLanguage.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MapActivity.this, LanguageActivity.class));
            }
        });
        llDownloader = findViewById(R.id.llDownloader);
        llDownloader.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MapActivity.this, DownloadActivity.class));
            }
        });

        // initialize map
        String cacheLocation = new File(getExternalFilesDir(null), "map-data").getAbsolutePath();
        MapSettings.setDiskCacheRootPath(cacheLocation);
        AndroidXMapFragment mapFragment = (AndroidXMapFragment) getSupportFragmentManager().findFragmentById(R.id.mapFragment);
        mapFragment.init(error -> {
            if (error == OnEngineInitListener.Error.NONE) {
                // on map loaded
                map = mapFragment.getMap();
                map.setCenter(new GeoCoordinate(destLat, destLng, 0.0), Map.Animation.NONE);
                map.setZoomLevel(map.getMaxZoomLevel() - 1);
                // set destination marker on map
                try {
                    Image flag = new Image();
                    flag.setImageResource(R.drawable.flag);
                    map.addMapObject(new MapMarker(new GeoCoordinate(destLat, destLng)).setIcon(flag).setAnchorPoint(new PointF(0.0f, flag.getHeight())));
                } catch (IOException e) {
                    e.printStackTrace();
                }
                // init navigation manager
                navigationManager = NavigationManager.getInstance();

                // init position manager
                positioningManager = PositioningManager.getInstance();
                mHereLocation = LocationDataSourceHERE.getInstance(new StatusListener() {
                    @Override
                    public void onOfflineModeChanged(boolean b) {

                    }

                    @Override
                    public void onAirplaneModeEnabled() {

                    }

                    @Override
                    public void onWifiScansDisabled() {

                    }

                    @Override
                    public void onBluetoothDisabled() {

                    }

                    @Override
                    public void onCellDisabled() {

                    }

                    @Override
                    public void onGnssLocationDisabled() {

                    }

                    @Override
                    public void onNetworkLocationDisabled() {

                    }

                    @Override
                    public void onServiceError(ServiceError serviceError) {

                    }

                    @Override
                    public void onPositioningError(PositioningError positioningError) {

                    }

                    @Override
                    public void onWifiIndoorPositioningNotAvailable() {

                    }

                    @Override
                    public void onWifiIndoorPositioningDegraded() {

                    }
                });
                if (mHereLocation == null) {
                    Toast.makeText(this, "LocationDataSourceHERE.getInstance(): failed, exiting", Toast.LENGTH_LONG).show();
                    finish();
                }
                positioningManager.setDataSource(mHereLocation);
                positioningManager.addListener(new WeakReference<PositioningManager.OnPositionChangedListener>(MapActivity.this));

                // load offline map
                coreRouter = new CoreRouter();
                if (ConnectionUtil.isNetworkAvailable(this)) {
                    coreRouter.setConnectivity(CoreRouter.Connectivity.DEFAULT);
                    Log.e("MapActivity", "Connected!------------");
                } else {
                    coreRouter.setConnectivity(CoreRouter.Connectivity.OFFLINE);
                    Log.e("MapActivity", "Offline!------------");
                }

                // start getting location
                if (positioningManager.start(PositioningManager.LocationMethod.GPS_NETWORK_INDOOR)) {
                    map.getPositionIndicator().setVisible(true);
                } else {
                    Toast.makeText(MapActivity.this, "PositioningManager.start: failed, exiting", Toast.LENGTH_LONG).show();
                    finish();
                }
            } else {
                new AlertDialog.Builder(MapActivity.this).setMessage(
                        "Error : " + error.name() + "\n\n" + error.getDetails())
                        .setTitle("Map engine init error")
                        .setNegativeButton(android.R.string.cancel,
                                new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(
                                            DialogInterface dialog,
                                            int which) {
                                        finish();
                                    }
                                }).create().show();
            }
        });
    }

    @Override
    public void onPositionUpdated(PositioningManager.LocationMethod locationMethod, @Nullable GeoPosition geoPosition, boolean b) {
        if (mTransforming) {
            mPendingUpdate = new Runnable() {
                @Override
                public void run() {
                    onPositionUpdated(locationMethod, geoPosition, b);
                }
            };
        } else {
            //set current location
            curLat = geoPosition.getCoordinate().getLatitude();
            curLng = geoPosition.getCoordinate().getLongitude();
            MapDataPrefetcher.getInstance().addListener(prefetcherListener);
            if (map != null && (srcLat == -9999 || srcLng == -9999)) {
                map.setCenter(new GeoCoordinate(curLat, curLat), Map.Animation.BOW);
                srcLat = curLat;
                srcLng = curLng;
                RouteOptions routeOptions = new RouteOptions();
                routeOptions.setRouteCount(100);
                routeOptions.setTransportMode(RouteOptions.TransportMode.CAR);
                List<RouteWaypoint> waypoints = new ArrayList<>();
                waypoints.add(new RouteWaypoint(new GeoCoordinate(srcLat, srcLng)));
                waypoints.add(new RouteWaypoint(new GeoCoordinate(destLat, destLng)));
                RoutePlan routePlan = new RoutePlan();
                routePlan.setRouteOptions(routeOptions);
                for (RouteWaypoint waypoint : waypoints) {
                    routePlan.addWaypoint(waypoint);
                }
                coreRouter.calculateRoute(routePlan, new Router.Listener<List<RouteResult>, RoutingError>() {
                    @Override
                    public void onProgress(int i) {
                    }

                    @Override
                    public void onCalculateRouteFinished(List<RouteResult> routeResults, RoutingError routingError) {
                        if (routingError != RoutingError.NONE ) {
                            Toast.makeText(MapActivity.this, "Routing Error: "+routingError.toString(), Toast.LENGTH_LONG).show();
                        } else {
                            lastCalculatedRouteResults = routeResults;
                            if (currentMapRoute != null) {
                                map.removeMapObject(currentMapRoute);
                            }
                            route = routeResults.get(0).getRoute();
                            currentMapRoute = new MapRoute(route);
                            map.addMapObject(currentMapRoute);
                            map.zoomTo(route.getBoundingBox(), Map.Animation.BOW, 1);

                            // init Maneuver view
                            guidanceManeuverPresenter = new GuidanceManeuverPresenter(MapActivity.this, navigationManager, route);
                            guidanceManeuverPresenter.addListener(new GuidanceManeuverListener() {
                                @Override
                                public void onDataChanged(@Nullable GuidanceManeuverData guidanceManeuverData) {
                                    if (guidanceManeuverData == null) {
                                        guidanceManeuverView.setViewState(GuidanceManeuverView.State.UPDATING);
                                    } else {
                                        populateManeuverView(guidanceManeuverData);
                                    }
                                }

                                @Override
                                public void onDestinationReached() {
                                    guidanceManeuverView.highLightManeuver(Color.BLUE);
                                }
                            });
                            startGuidance();
                        }
                    }
                });
            }
            // Follow current position
            map.setCenter(geoPosition.getCoordinate(), Map.Animation.BOW);
            map.setOrientation((float) geoPosition.getHeading(), Map.Animation.BOW);
            // update arrival time
            RouteTta routeTta = NavigationManager.getInstance().getTta(Route.TrafficPenaltyMode.OPTIMAL, true);
            if (routeTta != null) {
                long seconds = routeTta.getDuration();
                Calendar cal = Calendar.getInstance();
                cal.add(Calendar.SECOND, (int)seconds);
                SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                tvTime.setText(sdf.format(cal.getTime()));
            }

            if (PositioningManager.getInstance().getRoadElement() == null && !fetchingDataInProgress) {
                GeoBoundingBox areaAround = new GeoBoundingBox(geoPosition.getCoordinate(), 500, 500);
                MapDataPrefetcher.getInstance().fetchMapData(areaAround);
                fetchingDataInProgress = true;
            }
            // update speed and speed limit
            if (geoPosition.isValid() && geoPosition instanceof MatchedGeoPosition) {
                MatchedGeoPosition mgp = (MatchedGeoPosition) geoPosition;
                int currentSpeedLimitTransformed = 0;
                int currentSpeed = meterPerSecToKmPerHour(mgp.getSpeed());
                if (mgp.getRoadElement() != null) {
                    double currentSpeedLimit = mgp.getRoadElement().getSpeedLimit();
                    currentSpeedLimitTransformed  = meterPerSecToKmPerHour(currentSpeedLimit);
                }
                populateSpeed(currentSpeed, currentSpeedLimitTransformed);
            } else {
                //handle error
            }
        }
    }

    @Override
    public void onPositionFixChanged(PositioningManager.LocationMethod locationMethod, PositioningManager.LocationStatus locationStatus) {

    }

    @Override
    public void onMapTransformStart() {
        mTransforming = true;
    }

    @Override
    public void onMapTransformEnd(MapState mapState) {
        mTransforming = false;
        if (mPendingUpdate != null) {
            mPendingUpdate.run();
            mPendingUpdate = null;
        }
    }

    private void populateSpeed(int currentSpeed, int currentSpeedLimit) {
        if (currentSpeed < 1000) {
            tvSpeed.setText(String.valueOf(currentSpeed));
            tvSpeedLimit.setText(String.valueOf(currentSpeedLimit));
        }
    }

    private void startGuidance() {
        if (route == null || guidanceManeuverPresenter == null) {
            return;
        }
        guidanceManeuverPresenter.resume();
        map.addMapObject(new MapRoute(route));
        map.setCenter(route.getStart(), Map.Animation.NONE);
        map.setTilt(75.0f);
        map.setZoomLevel(map.getMaxZoomLevel());
        map.setLandmarksVisible(true);
        map.setExtrudedBuildingsVisible(true);
        map.setCartoMarkersVisible(true);
        map.setSafetySpotsVisible(true);

        navigationManager.setMap(map);
        navigationManager.setRoute(route);
        navigationManager.setSpeedWarningEnabled(true);
        navigationManager.setDistanceUnit(NavigationManager.UnitSystem.METRIC);
        navigationManager.addNewInstructionEventListener(
                new WeakReference<NavigationManager.NewInstructionEventListener>(instructListener));
        navigationManager.addPositionListener(
                new WeakReference<NavigationManager.PositionListener>(positionListener));
        navigationManager.addNavigationManagerEventListener(new WeakReference<NavigationManager.NavigationManagerEventListener>(navigationManagerEventListener));

        VoiceSkin selectedVoiceSkin = navigationManager.getVoiceGuidanceOptions().getVoiceSkin();
        if (selectedVoiceSkin.getId() % 1000 != 0) {
            VoiceCatalog catalog = VoiceCatalog.getInstance();
            List<VoiceSkin> voiceSkins = catalog.getLocalVoiceSkins();
            for (VoiceSkin voiceSkin : voiceSkins) {
                if (voiceSkin.getId() == 1000) {
                    navigationManager.getVoiceGuidanceOptions().setVoiceSkin(voiceSkin);
                    break;
                }
            }
        }

        navigationManager.startNavigation(route);
    }

    private final NavigationManager.PositionListener positionListener
            = new NavigationManager.PositionListener() {
        @Override
        public void onPositionUpdated(GeoPosition loc) {
            loc.getCoordinate();
            loc.getHeading();
            loc.getSpeed();

            navigationManager.getTta(Route.TrafficPenaltyMode.DISABLED, true);
            navigationManager.getDestinationDistance();
        }
    };

    private void populateManeuverView(GuidanceManeuverData guidanceManeuverData) {
        guidanceManeuverView.setViewState(new GuidanceManeuverView.State(guidanceManeuverData));
        if (guidanceManeuverData.getInfo2() != null) {
            tvStreet.setText(guidanceManeuverData.getInfo2());
        }
        if (guidanceManeuverData.getIconId() == -1) {
            ivManeuverIcon.setVisibility(View.INVISIBLE);
            ivManeuverIcon.setTag(0);
        } else if (guidanceManeuverData.getIconId() == 0) {
            ivManeuverIcon.setVisibility(View.GONE);
            ivManeuverIcon.setTag(guidanceManeuverData.getIconId());
        } else {
            ivManeuverIcon.setVisibility(View.VISIBLE);
            ivManeuverIcon.setImageResource(guidanceManeuverData.getIconId());
            ivManeuverIcon.setTag(guidanceManeuverData.getIconId());
        }
        if (guidanceManeuverData.getDistance() == null) {
            tvManeuverDistance.setVisibility(View.GONE);
        } else {
            tvManeuverDistance.setVisibility(View.VISIBLE);
            String distance = DistanceFormatterUtil.formatDistance(MapActivity.this, guidanceManeuverData.getDistance(), UnitSystem.METRIC);
            if (distance.contains("km")) {
                tvManeuverDistance.setText(distance.replaceAll("km", ""));
                tvManeuverDistanceUnit.setText("km");
            } else {
                tvManeuverDistance.setText(distance.replaceAll("m", ""));
                tvManeuverDistanceUnit.setText("m");
            }
        }
    }

    private final NavigationManager.NewInstructionEventListener instructListener
            = new NavigationManager.NewInstructionEventListener() {

        @Override
        public void onNewInstructionEvent() {
            navigationManager.getNextManeuver();
        }
    };


    private final MapDataPrefetcher.Adapter prefetcherListener = new MapDataPrefetcher.Adapter() {
        @Override
        public void onStatus(int requestId, PrefetchStatus status) {
            if(status != PrefetchStatus.PREFETCH_IN_PROGRESS) {
                fetchingDataInProgress = false;
            }
        }
    };

    private final NavigationManager.NavigationManagerEventListener navigationManagerEventListener = new NavigationManager.NavigationManagerEventListener() {
        @Override
        public void onRouteUpdated(@NonNull Route updatedRoute) {
            map.removeMapObject(currentMapRoute);
            currentMapRoute = new MapRoute(updatedRoute);
            map.addMapObject(currentMapRoute);
        }
    };

    private int meterPerSecToKmPerHour (double speed) {
        return (int) (speed * 3.6);
    }

    @Override
    protected void onDestroy() {
        Intent stopIntent = new Intent(MapActivity.this, ForegroundService.class);
        stopIntent.setAction(ForegroundService.STOP_ACTION);
        getApplicationContext().startService(stopIntent);
        if (navigationManager != null) {
            navigationManager.stop();
        }
        super.onDestroy();
    }

    @Override
    protected void onPause() {
        super.onPause();
        if (positioningManager != null) {
            positioningManager.stop();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (positioningManager != null) {
            positioningManager.start(PositioningManager.LocationMethod.GPS_NETWORK_INDOOR);
        }
    }
}