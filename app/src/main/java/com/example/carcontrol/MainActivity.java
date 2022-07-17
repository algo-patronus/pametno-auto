package com.example.carcontrol;

import static android.content.ContentValues.TAG;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import org.eclipse.paho.android.service.MqttAndroidClient;
import org.eclipse.paho.client.mqttv3.IMqttActionListener;
import org.eclipse.paho.client.mqttv3.IMqttToken;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;

import java.io.UnsupportedEncodingException;

public class MainActivity extends AppCompatActivity {

    Button automatic,manual;

    String topic,clientId;
    IMqttToken token;
    int flag=0,flag_m=0;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        automatic = (Button) findViewById(R.id.automatic);
        manual = (Button) findViewById(R.id.manual);

        clientId = MqttClient.generateClientId();
        topic="test/topic/carcontrol";
        MqttAndroidClient client =
                new MqttAndroidClient(MainActivity.this, "tcp://test.mosquitto.org:1883",
                        clientId);

        automatic.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                                             try {
                                                 token = client.connect();
                                             } catch (MqttException e) {
                                                 e.printStackTrace();
                                             }
                                             token.setActionCallback(new IMqttActionListener() {
                                                 @Override
                                                 public void onSuccess(IMqttToken asyncActionToken) {
                                                     // We are connected
                                                     Log.d(TAG, "onSuccess");
                                                     flag=1;
                                                     Toast.makeText(MainActivity.this, "connected", Toast.LENGTH_SHORT).show();


                                                     String payload = "A";
                                                     byte[] encodedPayload = new byte[0];
                                                     try {
                                                         encodedPayload = payload.getBytes("UTF-8");
                                                         MqttMessage message = new MqttMessage(encodedPayload);
                                                         client.publish(topic, message);
                                                     } catch (UnsupportedEncodingException | MqttException e) {
                                                         e.printStackTrace();
                                                     }

                                                 }

                                                 @Override
                                                 public void onFailure(IMqttToken asyncActionToken, Throwable exception) {
                                                     Toast.makeText(MainActivity.this, "not connected", Toast.LENGTH_SHORT).show();
                                                 flag=0;
                                                 }
                                             });
                                             if(flag==1){
                                                 startActivity(new Intent(MainActivity.this, Automatic.class));
                                             }
                                         }
                                     });
        manual.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    token = client.connect();
                } catch (MqttException e) {
                    e.printStackTrace();
                }
                token.setActionCallback(new IMqttActionListener(){
                    @Override
                    public void onSuccess(IMqttToken asyncActionToken) {
                        // We are connected
                       flag_m=1;
                        Log.d(TAG, "onSuccess");
                        Toast.makeText(MainActivity.this, "connected", Toast.LENGTH_SHORT).show();
                        String payload = "M";
                        byte[] encodedPayload = new byte[0];
                        try {
                            encodedPayload = payload.getBytes("UTF-8");
                            MqttMessage message = new MqttMessage(encodedPayload);
                            client.publish(topic, message);
                        } catch (UnsupportedEncodingException | MqttException e) {
                            e.printStackTrace();
                        }


                    }

                    @Override
                    public void onFailure(IMqttToken asyncActionToken, Throwable exception) {
                        Toast.makeText(MainActivity.this, "not connected", Toast.LENGTH_SHORT).show();
                    flag_m=0;
                    }
                });
                if(flag_m==1){
                    startActivity(new Intent(MainActivity.this, Manual.class));
                }
            }
        });


        

        if (Build.VERSION.SDK_INT >= 21) {
            Window window = this.getWindow();
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
            ((Window) window).setStatusBarColor(this.getResources().getColor(R.color.orange));
            getWindow().setNavigationBarColor(getResources().getColor(R.color.orange));
        } }



}

