package com.here.yippee;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    EditText etLat, etLng;
    Button btnNav;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setElements();
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
    }
}