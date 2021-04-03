package com.here.yippee;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.PointF;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.here.android.mpa.common.GeoCoordinate;
import com.here.android.mpa.common.GeoPosition;
import com.here.android.mpa.common.Image;
import com.here.android.mpa.common.LocationDataSourceHERE;
import com.here.android.mpa.common.MapSettings;
import com.here.android.mpa.common.OnEngineInitListener;
import com.here.android.mpa.common.PositioningManager;
import com.here.android.mpa.guidance.NavigationManager;
import com.here.android.mpa.mapping.AndroidXMapFragment;
import com.here.android.mpa.mapping.Map;
import com.here.android.mpa.mapping.MapMarker;
import com.here.android.mpa.routing.CoreRouter;
import com.here.android.positioning.StatusListener;
import com.here.yippee.util.ConnectionUtil;

import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;

public class MapLocationActivity extends AppCompatActivity implements PositioningManager.OnPositionChangedListener {

    Button btnHome;
    private Map map;
    private PositioningManager positioningManager;
    private NavigationManager navigationManager;
    private LocationDataSourceHERE mHereLocation;
    private CoreRouter coreRouter;
    private boolean mTransforming;
    private Runnable mPendingUpdate;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_map_location);
        btnHome = findViewById(R.id.bthNome);
        btnHome.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
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
                map.setZoomLevel(map.getMaxZoomLevel() - 1);
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
                positioningManager.addListener(new WeakReference<PositioningManager.OnPositionChangedListener>(MapLocationActivity.this));

                // load offline map
                coreRouter = new CoreRouter();
                if (ConnectionUtil.isNetworkAvailable(this)) {
                    coreRouter.setConnectivity(CoreRouter.Connectivity.DEFAULT);
                } else {
                    coreRouter.setConnectivity(CoreRouter.Connectivity.OFFLINE);
                }

                // start getting location
                if (positioningManager.start(PositioningManager.LocationMethod.GPS_NETWORK_INDOOR)) {
                    map.getPositionIndicator().setVisible(true);
                } else {
                    Toast.makeText(MapLocationActivity.this, "PositioningManager.start: failed, exiting", Toast.LENGTH_LONG).show();
                    finish();
                }
            } else {
                new AlertDialog.Builder(MapLocationActivity.this).setMessage(
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
        map.setCenter(new GeoCoordinate(geoPosition.getCoordinate().getLatitude(), geoPosition.getCoordinate().getLongitude(), 0.0), Map.Animation.NONE);
        map.setZoomLevel(map.getMaxZoomLevel() - 1);
    }

    @Override
    public void onPositionFixChanged(PositioningManager.LocationMethod locationMethod, PositioningManager.LocationStatus locationStatus) {

    }
}