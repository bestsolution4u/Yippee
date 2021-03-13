package com.here.yippee.helper;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;

import java.util.ArrayList;

public class PermissionHelper {
    private static String LOG_TAG = "Yippee-PermissionHelper";

    public static String[] GetPermissionsToRequest(@NonNull AppCompatActivity activity) {
        ArrayList<String> permissionList = new ArrayList<>();
        try {
            PackageInfo packageInfo = activity.getPackageManager().getPackageInfo(
                    activity.getPackageName(), PackageManager.GET_PERMISSIONS);
            if (packageInfo.requestedPermissions != null) {
                for (String permission : packageInfo.requestedPermissions) {
                    if (ContextCompat.checkSelfPermission(
                            activity, permission) != PackageManager.PERMISSION_GRANTED) {
                        permissionList.add(permission);
                    }
                }
            }
        } catch (Exception e) {
            Log.e(LOG_TAG, "Cannot read permissions from manifest: " + e.getMessage());
        }
        return permissionList.toArray(new String[permissionList.size()]);
    }
}
