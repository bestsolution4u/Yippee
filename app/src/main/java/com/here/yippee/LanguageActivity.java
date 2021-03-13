package com.here.yippee;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RadioButton;
import android.widget.TextView;

import com.here.android.mpa.guidance.NavigationManager;
import com.here.android.mpa.guidance.VoiceCatalog;
import com.here.android.mpa.guidance.VoiceSkin;

import java.util.ArrayList;
import java.util.List;

public class LanguageActivity extends AppCompatActivity {

    private String LOGTAG = "Yippee-LanguageActivity";

    private RecyclerView rvVoiceList;
    private ImageButton ivBack;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_language);
        rvVoiceList = findViewById(R.id.voicesList);
        rvVoiceList.setLayoutManager(new LinearLayoutManager(this));
        ivBack = findViewById(R.id.ivBack);
        ivBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        displayLanguages();
    }

    private void displayLanguages() {
        ArrayList<VoiceSkin> voices = new ArrayList<VoiceSkin>();
        VoiceCatalog voiceCatalog = VoiceCatalog.getInstance();

        for (VoiceSkin voiceSkin : voiceCatalog.getLocalVoiceSkins()) {
            //voices.add(voiceSkin);
            if (voiceSkin.getId() < 250) {
                voices.add(voiceSkin);
            }
        }
        Log.e(LOGTAG, "Languges: " + voices.size());
        VoiceSkinsAdapter adapter = new VoiceSkinsAdapter(this, voices);
        rvVoiceList.setAdapter(adapter);
    }

    private static class VoiceSkinsAdapter
            extends RecyclerView.Adapter<VoiceSkinsAdapter.VoiceViewHolder> {
        private List<VoiceSkin> m_voiceSkins;
        private LayoutInflater m_inflater;
        private long m_selectedId;

        VoiceSkinsAdapter(Context context, List<VoiceSkin> voiceSkins) {
            m_voiceSkins = voiceSkins;
            m_inflater = LayoutInflater.from(context);
            Log.e("Yippee", "Constructur");
            VoiceSkin selectedVoiceSkin =
                    NavigationManager.getInstance().getVoiceGuidanceOptions().getVoiceSkin();
            if (selectedVoiceSkin != null) {
                m_selectedId = selectedVoiceSkin.getId();
            } else {
                m_selectedId = 206;
            }
        }

        @NonNull
        @Override
        public VoiceViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            Log.e("Yippee", "OnCreateViewHolder");
            View view = m_inflater.inflate(R.layout.voice_skin_item, parent, false);
            return new VoiceViewHolder(view);
        }

        @SuppressLint("SetTextI18n") @Override
        public void onBindViewHolder(@NonNull VoiceViewHolder holder, final int position) {
            VoiceSkin voiceSkin = m_voiceSkins.get(position);
            holder.m_languageView.setText(voiceSkin.getLanguage());
            holder.m_selectedView.setChecked(m_selectedId == voiceSkin.getId());

            holder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    // set voice skin for navigation
                    NavigationManager.getInstance().getVoiceGuidanceOptions()
                            .setVoiceSkin(m_voiceSkins.get(position));
                    m_selectedId = m_voiceSkins.get(position).getId();
                    notifyItemRangeChanged(0, m_voiceSkins.size());
                }
            });
        }

        @Override
        public int getItemCount() {
            Log.e("Yippee", "Recycler View size: " + m_voiceSkins.size());
            return m_voiceSkins.size();
        }

        private static class VoiceViewHolder extends RecyclerView.ViewHolder {
            RadioButton m_selectedView;
            TextView m_languageView;

            VoiceViewHolder(View itemView) {
                super(itemView);

                m_selectedView = itemView.findViewById(R.id.voiceSelected);
                m_languageView = itemView.findViewById(R.id.voiceLanguage);
            }
        }
    }
}