package com.here.yippee.adapter;

import android.graphics.drawable.Drawable;
import android.location.Location;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.here.yippee.R;
import com.here.yippee.model.LocationModel;
import com.here.yippee.util.LocationUtil;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

public class LocationAdapter extends RecyclerView.Adapter<LocationAdapter.LocationViewHolder> {

    private ArrayList<LocationModel> locations;
    private Location location;

    public LocationAdapter(ArrayList<LocationModel> locations) {
        this.locations = locations;
    }

    @NonNull
    @Override
    public LocationViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext()).inflate(R.layout.location_item, parent, false);
        return new LocationViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull LocationViewHolder holder, int position) {
        LocationModel wayLocation = locations.get(position);
        holder.llLocationWrapper.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(v.getContext(), "ItemClicked", Toast.LENGTH_SHORT).show();
            }
        });
        if (wayLocation.getImgs() != null) {
            try {
                InputStream ims = holder.ivImage.getContext().getAssets().open("images/" + wayLocation.getImgs().get(0).getUrl());
                Drawable d = Drawable.createFromStream(ims, null);
                holder.ivImage.setImageDrawable(d);
                ims.close();
            } catch (IOException ex) {
            }
        }
        if (wayLocation.getWayShortDesc() != null && !wayLocation.getWayShortDesc().equals("null")) {
            holder.tvShortDesc.setText(wayLocation.getWayShortDesc());
        } else {
            if (wayLocation.getWayDesc().length() > 20) {
                holder.tvShortDesc.setText(wayLocation.getWayDesc().substring(0, 18) + "...");
            } else {
                holder.tvShortDesc.setText(wayLocation.getWayDesc());
            }
        }
        holder.tvLocationName.setText(locations.get(position).getWayName());
        if (location != null) {
            double distance = LocationUtil.calculateDistance(location.getLatitude(), location.getLongitude(), wayLocation.getWayLat(), wayLocation.getWayLng());
            if (distance > 1000) {
                holder.tvDistance.setText("" + String.format("%.2f", distance / 1000) + " km");
            } else {
                holder.tvDistance.setText("" + String.format("%.2f", distance) + " m");
            }
        } else {
            holder.tvDistance.setText("");
        }
    }

    @Override
    public int getItemCount() {
        return locations != null ? locations.size() : 0;
    }

    public ArrayList<LocationModel> getLocations() {
        return locations;
    }

    public void setLocations(ArrayList<LocationModel> locations) {
        this.locations = locations;
    }

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    public class LocationViewHolder extends RecyclerView.ViewHolder {

        LinearLayout llLocationWrapper;
        ImageView ivImage;
        TextView tvLocationName, tvShortDesc, tvDistance;

        public LocationViewHolder(@NonNull View itemView) {
            super(itemView);
            llLocationWrapper = itemView.findViewById(R.id.llLocationWrapper);
            ivImage = itemView.findViewById(R.id.ivImage);
            tvLocationName = itemView.findViewById(R.id.tvLocationName);
            tvShortDesc = itemView.findViewById(R.id.tvShortDesc);
            tvDistance = itemView.findViewById(R.id.tvDistance);
        }
    }
}
