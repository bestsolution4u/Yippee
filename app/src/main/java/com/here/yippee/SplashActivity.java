package com.here.yippee;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class SplashActivity extends AppCompatActivity {

    private static final String APP_VERSION = "1.0.0";
    private static final String APP_VERSION_LABEL = "APP_VERSION";
    private static final String MyPREFERENCES = "YippeePreference" ;
    private SharedPreferences sharedpreferences;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);
        sharedpreferences = getSharedPreferences(MyPREFERENCES, Context.MODE_PRIVATE);
        String version = sharedpreferences.getString(APP_VERSION_LABEL, null);
        if (version == null || !version.equals(APP_VERSION)) {
            updateVersion();
            updateMapData();
        }
        /*updateVersion();
        updateMapData();*/
        goNext();
    }

    private void updateVersion() {
        SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString(APP_VERSION_LABEL, APP_VERSION);
        editor.apply();
    }

    private void goNext() {
        startActivity(new Intent(SplashActivity.this, MainActivity.class));
        finish();
    }

    private void updateMapData() {
        File folder = new File(getExternalFilesDir(null), "map-data");
        if (folder.exists()) deleteRecursive(folder);
        if (!folder.exists()) folder.mkdir();
        copyFileOrDir("");
    }

    private void deleteRecursive(File fileOrDirectory) {
        if (fileOrDirectory.isDirectory()) {
            for (File child : fileOrDirectory.listFiles()) {
                deleteRecursive(child);
            }
        }
        fileOrDirectory.delete();
    }

    public void copyFileOrDir(String path) {
        AssetManager assetManager = this.getAssets();
        String assets[] = null;
        try {
            assets = assetManager.list(path);
            if (assets.length == 0) {
                copyFile(path);
            } else {
                String fullPath = getExternalFilesDir(null).getAbsolutePath() + "/map-data/" + path;
                File dir = new File(fullPath);
                if (!dir.exists())
                    dir.mkdir();
                for (int i = 0; i < assets.length; ++i) {
                    copyFileOrDir(!path.isEmpty() ? path + "/" + assets[i] : assets[i]);
                }
            }
        } catch (IOException ex) {
            Log.e("tag", "I/O Exception", ex);
        }
    }

    private void copyFile(String filename) {
        AssetManager assetManager = this.getAssets();

        InputStream in = null;
        OutputStream out = null;
        try {
            in = assetManager.open(filename);
            String newFileName = getExternalFilesDir(null).getAbsolutePath() + "/map-data/" + filename;
            out = new FileOutputStream(newFileName);

            byte[] buffer = new byte[1024];
            int read;
            while ((read = in.read(buffer)) != -1) {
                out.write(buffer, 0, read);
            }
            in.close();
            in = null;
            out.flush();
            out.close();
            out = null;
        } catch (Exception e) {
            Log.e("tag", e.getMessage());
        }

    }
}