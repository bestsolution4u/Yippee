package com.here.yippee.util;

public class LocationUtil {
    public static double calculateDistance(double lat1, double lng1, double lat2, double lng2) {
        double pk = (double) (180/Math.PI);

        double a1 = lat1 / pk;
        double a2 = lng1 / pk;
        double b1 = lat2 / pk;
        double b2 = lng2 / pk;

        double t1 = Math.cos(a1) * Math.cos(a2) * Math.cos(b1) * Math.cos(b2);
        double t2 = Math.cos(a1) * Math.sin(a2) * Math.cos(b1) * Math.sin(b2);
        double t3 = Math.sin(a1) * Math.sin(b1);
        double tt = Math.acos(t1 + t2 + t3);

        return 6366000 * tt;
    }
}
