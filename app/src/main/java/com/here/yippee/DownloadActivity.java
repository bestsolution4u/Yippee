package com.here.yippee;

import android.os.Bundle;
import android.view.View;
import android.widget.ListView;

public class DownloadActivity extends android.app.ListActivity {

    private MapListView m_mapListView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_download);
        setupMapListView();
    }

    private void setupMapListView() {
        m_mapListView = new MapListView(this);
    }

    @Override
    public void onListItemClick(ListView l, View v, int position, long id) {
        m_mapListView.onListItemClicked(l, v, position, id);
    }
}