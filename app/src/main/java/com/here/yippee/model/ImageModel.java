package com.here.yippee.model;

import org.json.JSONException;
import org.json.JSONObject;

public class ImageModel {
    private String url;

    public ImageModel() {
    }

    public ImageModel fromJson(JSONObject json) {
        try {
            this.url = json.getString("url");
        } catch (JSONException e) {
            return null;
        }
        return this;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
