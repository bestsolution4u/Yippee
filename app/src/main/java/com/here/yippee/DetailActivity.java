package com.here.yippee;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.viewpager.widget.ViewPager;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.here.yippee.adapter.ImageAdapter;
import com.here.yippee.model.LocationModel;
import com.here.yippee.util.LocationUtil;

public class DetailActivity extends AppCompatActivity {

    LocationModel wayLocation;

    Button btnHome, btnNavigate;
    TextView tvDistance, tvTitle, tvDescription;
    ViewPager vpSlider;
    ImageView btnLeft, btnRight;
    ImageAdapter imageAdapter;

    private final LocationListener mLocationListener = new LocationListener() {
        @Override
        public void onLocationChanged(final Location location) {
            if (wayLocation != null) {
                double distance = LocationUtil.calculateDistance(location.getLatitude(), location.getLongitude(), wayLocation.getWayLat(), wayLocation.getWayLng());
                if (distance > 1000) {
                    tvDistance.setText("" + String.format("%.2f", distance / 1000) + " km");
                } else {
                    tvDistance.setText("" + String.format("%.2f", distance) + " m");
                }
            }
        }
    };

    private LocationManager mLocationManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail);
        Intent intent = getIntent();
        wayLocation = (LocationModel) intent.getSerializableExtra("Location");

        tvDistance = findViewById(R.id.tvDistance);
        tvTitle = findViewById(R.id.tvTitle);
        tvTitle.setText(wayLocation.getWayName());
        tvDescription = findViewById(R.id.tvDescription);
        tvDescription.setText(wayLocation.getWayDesc());
        btnHome = findViewById(R.id.bthNome);
        btnHome.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        btnNavigate = findViewById(R.id.btnNavigate);
        btnNavigate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(DetailActivity.this, MapActivity.class);
                Bundle b = new Bundle();
                b.putDouble("latitude", wayLocation.getWayLat()); //Your id
                b.putDouble("longitude", wayLocation.getWayLng()); //Your id
                intent.putExtras(b); //Put your id to your next Intent
                startActivity(intent);
            }
        });
        vpSlider = findViewById(R.id.vpSlider);
        imageAdapter = new ImageAdapter(this, wayLocation.getImgs());
        vpSlider.setAdapter(imageAdapter);
        vpSlider.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {
            @Override
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {

            }

            @Override
            public void onPageSelected(int position) {
                if (position == 0) {
                    btnLeft.setVisibility(View.INVISIBLE);
                } else {
                    btnLeft.setVisibility(View.VISIBLE);
                }
                if (position == wayLocation.getImgs().size() - 1) {
                    btnRight.setVisibility(View.INVISIBLE);
                } else {
                    btnRight.setVisibility(View.VISIBLE);
                }
            }

            @Override
            public void onPageScrollStateChanged(int state) {

            }
        });
        btnLeft = findViewById(R.id.btnLeft);
        btnLeft.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                vpSlider.setCurrentItem(vpSlider.getCurrentItem() - 1);
            }
        });
        btnRight = findViewById(R.id.btnRight);
        btnRight.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                vpSlider.setCurrentItem(vpSlider.getCurrentItem() + 1);
            }
        });

        mLocationManager = (LocationManager) getSystemService(LOCATION_SERVICE);
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {

        } else {
            mLocationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 10, 50, mLocationListener);
        }
    }
}