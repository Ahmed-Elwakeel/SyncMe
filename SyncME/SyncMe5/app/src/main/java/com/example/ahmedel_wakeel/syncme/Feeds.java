package com.example.ahmedel_wakeel.syncme;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Environment;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;

public class Feeds extends AppCompatActivity {
    private String outputFile = null;
    MediaPlayer mp;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_feeds);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        FloatingActionButton fab = (FloatingActionButton) findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                        .setAction("Action", null).show();
            }
        });
        Button profile = (Button) findViewById(R.id.profile);

        profile.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(), profile_activity.class);
                startActivity(intent);
            }
        });
        Button post = (Button) findViewById(R.id.post);
        post.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(), Post.class);
                startActivity(intent);
            }
        });

        Button play = (Button) findViewById(R.id.play);
        Button stop = (Button) findViewById(R.id.play);

        play.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                mp = new MediaPlayer();

                try{
                    outputFile = Environment.getExternalStorageDirectory().getAbsolutePath() + "/recording.3gp";
                    mp.setDataSource(outputFile);
                    mp.prepare();
                    mp.start();
                }catch(Exception e){
                    e.printStackTrace();
                }
            }
        });

    }

}
