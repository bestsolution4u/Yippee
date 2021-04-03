package com.here.yippee.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;

import com.here.yippee.R;
import com.here.yippee.model.ImageModel;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

public class ImageAdapter extends PagerAdapter {

    private Context context;
    private ArrayList<ImageModel> images;
    private LayoutInflater layoutInflater;

    public ImageAdapter(Context context, ArrayList<ImageModel> images) {
        this.images = images;
        this.context = context;
        this.layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }

    @NonNull
    @Override
    public View instantiateItem(@NonNull ViewGroup container, int position) {
        Log.e("ImageAdapter", "instantiateItem");
        ImageView imageView = (ImageView) layoutInflater.inflate(R.layout.image_item, container, false);
        try {
            InputStream ims = imageView.getContext().getAssets().open("images/" + images.get(position).getUrl());
            Drawable d = Drawable.createFromStream(ims, null);
            imageView.setImageDrawable(d);
            ims.close();
        } catch (IOException ex) {
            Log.e("ImageAdapter", ex.getMessage());
        }
        container.addView(imageView);
        return imageView;
    }

    @Override
    public int getCount() {
        return images.size();
    }

    @Override
    public boolean isViewFromObject(@NonNull View view, @NonNull Object object) {
        return view == object;
    }

    @Override
    public void destroyItem(@NonNull ViewGroup container, int position, @NonNull Object object) {
        container.removeView((ImageView)object);
    }
}
