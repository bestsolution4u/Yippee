package com.here.yippee.model;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.Serializable;
import java.util.ArrayList;

public class LocationModel implements Serializable {
    private String wayId, wayType, wayName, wayShortDesc, wayDesc;
    private double wayLat, wayLng;
    private ArrayList<ImageModel> imgs;

    public LocationModel() {
    }

    public LocationModel fromJson(JSONObject json) {
        try {
            wayId = json.getString("way_id");
            wayType = json.getString("way_type");
            wayName = json.getString("way_name");
            wayShortDesc = json.getString("way_shortDesc");
            wayDesc = json.getString("way_description");
            wayLat = Double.parseDouble(json.getString("way_lat"));
            wayLng = Double.parseDouble(json.getString("way_lng"));
            JSONArray images = json.getJSONArray("imgs");
            imgs = new ArrayList<ImageModel>();
            for (int i = 0; i < images.length(); i++) {
                imgs.add(new ImageModel().fromJson(images.getJSONObject(i)));
            }
        } catch (JSONException e) {
            return null;
        }
        return this;
    }

    public String getWayId() {
        return wayId;
    }

    public void setWayId(String wayId) {
        this.wayId = wayId;
    }

    public String getWayType() {
        return wayType;
    }

    public void setWayType(String wayType) {
        this.wayType = wayType;
    }

    public String getWayName() {
        return wayName;
    }

    public void setWayName(String wayName) {
        this.wayName = wayName;
    }

    public String getWayShortDesc() {
        return wayShortDesc;
    }

    public void setWayShortDesc(String wayShortDesc) {
        this.wayShortDesc = wayShortDesc;
    }

    public String getWayDesc() {
        return wayDesc;
    }

    public void setWayDesc(String wayDesc) {
        this.wayDesc = wayDesc;
    }

    public double getWayLat() {
        return wayLat;
    }

    public void setWayLat(double wayLat) {
        this.wayLat = wayLat;
    }

    public double getWayLng() {
        return wayLng;
    }

    public void setWayLng(double wayLng) {
        this.wayLng = wayLng;
    }

    public ArrayList<ImageModel> getImgs() {
        return imgs;
    }

    public void setImgs(ArrayList<ImageModel> imgs) {
        this.imgs = imgs;
    }
}
