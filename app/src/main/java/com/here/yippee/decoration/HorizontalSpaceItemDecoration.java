package com.here.yippee.decoration;

import android.graphics.Rect;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

public class HorizontalSpaceItemDecoration extends RecyclerView.ItemDecoration {
    private final int spaceWidth;

    public HorizontalSpaceItemDecoration(int spaceWidth) {
        this.spaceWidth = spaceWidth;
    }

    @Override
    public void getItemOffsets(@NonNull Rect outRect, int itemPosition, @NonNull RecyclerView parent) {
        if (itemPosition != parent.getAdapter().getItemCount() - 1) {
            outRect.right = spaceWidth;
        }
    }
}
