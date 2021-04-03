package com.here.yippee;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Toast;

import com.here.yippee.adapter.LocationAdapter;
import com.here.yippee.decoration.HorizontalSpaceItemDecoration;
import com.here.yippee.model.LocationModel;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    EditText etLat, etLng;
    Button btnNav;


    RecyclerView rvList;
    LocationAdapter rvListAdapter;
    Button btnMap, btnAll, btnAttractions, btnShopping, btnEmergency;

    ArrayList<LocationModel> locations = new ArrayList<LocationModel>();
    private Location mLocation;

    private final LocationListener mLocationListener = new LocationListener() {
        @Override
        public void onLocationChanged(final Location location) {
            mLocation = location;
            Log.e("Location", "Updated");
            if (rvListAdapter != null) {
                rvListAdapter.setLocation(location);
                rvListAdapter.notifyDataSetChanged();
            }
        }
    };

    private LocationManager mLocationManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mLocationManager = (LocationManager) getSystemService(LOCATION_SERVICE);

        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {

        } else {
            mLocationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 10, 50, mLocationListener);
        }

        setElements();
        String data = loadJSONFromAsset();
        if (data != null) {
            try {
                JSONObject obj = new JSONObject(data);
                JSONArray items = obj.getJSONArray("items");
                for (int i = 0; i < items.length(); i++) {
                    locations.add(new LocationModel().fromJson(items.getJSONObject(i)));
                }
                if (locations != null && !locations.isEmpty()) setupLocationList();
                Log.e("JSON", "" + obj.length());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private void setElements() {
        etLat = findViewById(R.id.etLatitude);
        etLng = findViewById(R.id.etLongitude);
        btnNav = findViewById(R.id.btnNav);
        btnNav.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (etLat.getText().toString().equals("") || etLng.getText().toString().equals("")) {
                    Toast.makeText(MainActivity.this, "Location is required.", Toast.LENGTH_SHORT).show();
                } else {
                    Intent intent = new Intent(MainActivity.this, MapActivity.class);
                    Bundle b = new Bundle();
                    b.putDouble("latitude", Double.parseDouble(etLat.getText().toString())); //Your id
                    b.putDouble("longitude", Double.parseDouble(etLng.getText().toString())); //Your id
                    intent.putExtras(b); //Put your id to your next Intent
                    startActivity(intent);
                }
            }
        });
        btnMap = findViewById(R.id.btnMap);
        btnMap.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

            }
        });
        btnAll = findViewById(R.id.btnAll);
        btnAll.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                filterLocations("0");
            }
        });
        btnAttractions = findViewById(R.id.btnAttractions);
        btnAttractions.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                filterLocations("1");
            }
        });
        btnShopping = findViewById(R.id.btnShopping);
        btnShopping.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                filterLocations("2");
            }
        });
        btnEmergency = findViewById(R.id.btnEmergency);
        btnEmergency.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                filterLocations("3");
            }
        });
        rvList = findViewById(R.id.rvList);
    }

    public String loadJSONFromAsset() {
        String json = null;
        try {
            InputStream is = getAssets().open("data.json");
            int size = is.available();
            byte[] buffer = new byte[size];
            is.read(buffer);
            is.close();
            json = new String(buffer, "UTF-8");
        } catch (IOException ex) {
            ex.printStackTrace();
            return null;
        }
        return json;
    }

    public void setupLocationList() {
        LinearLayoutManager rvListManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false);
        rvList.setLayoutManager(rvListManager);
        rvList.addItemDecoration(new HorizontalSpaceItemDecoration(60));
        rvListAdapter = new LocationAdapter(locations);
        rvList.setAdapter(rvListAdapter);
    }

    public void filterLocations(String type) {
        ArrayList<LocationModel> filters = new ArrayList<>();
        if (type.equals("0")) {
            filters = locations;
        } else {
            for (int i = 0; i < locations.size(); i++) {
                if (locations.get(i).getWayType().equals(type)) filters.add(locations.get(i));
            }
        }
        rvListAdapter.setLocations(filters);
        rvListAdapter.notifyDataSetChanged();
    }
}