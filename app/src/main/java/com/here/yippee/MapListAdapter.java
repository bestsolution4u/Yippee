package com.here.yippee;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import com.here.android.mpa.odml.MapPackage;

import java.util.List;

class MapListAdapter extends ArrayAdapter<MapPackage> {
    private List<MapPackage> m_list;

    MapListAdapter(Context context, int resource, List<MapPackage> results) {
        super(context, resource, results);
        m_list = results;
    }

    @Override
    public int getCount() {
        return m_list.size();
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        MapPackage mapPackage = m_list.get(position);
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.list_item, parent,
                    false);
        }
        TextView tv = (TextView) convertView.findViewById(R.id.mapPackageName);
        tv.setText(mapPackage.getTitle());
        tv = (TextView) convertView.findViewById(R.id.mapPackageState);
        tv.setText(mapPackage.getInstallationState().toString());
        tv = (TextView) convertView.findViewById(R.id.mapPackageSize);
        tv.setText(String.valueOf(mapPackage.getSize()) + "KB");
        return convertView;
    }
}
