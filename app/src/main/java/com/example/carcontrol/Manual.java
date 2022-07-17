package com.example.carcontrol;

import static android.content.ContentValues.TAG;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.Toast;

import org.eclipse.paho.android.service.MqttAndroidClient;
import org.eclipse.paho.client.mqttv3.IMqttActionListener;
import org.eclipse.paho.client.mqttv3.IMqttToken;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;

import java.io.UnsupportedEncodingException;

public class Manual extends AppCompatActivity {

    ImageButton Up,Down,Left,Right;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_manual);
        Left = (ImageButton) findViewById(R.id.Left);
        Right = (ImageButton) findViewById(R.id.Right);
        Up = (ImageButton) findViewById(R.id.Up);
        Down = (ImageButton) findViewById(R.id.Down);
        String topic,clientId;
        final IMqttToken[] token = new IMqttToken[1];
       /* int flag_u=0;
        int flag_d=0;
        int flag_r=0;
        final int[] flag_l = {0};*/

        clientId = MqttClient.generateClientId();
        topic="test/topic/carcontrol";
        MqttAndroidClient client =
                new MqttAndroidClient(Manual.this, "tcp://test.mosquitto.org:1883",
                        clientId);

        Left.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                try {
                    token[0] = client.connect();
                } catch (MqttException e) {
                    e.printStackTrace();
                }
                token[0].setActionCallback(new IMqttActionListener() {
                    @Override
                    public void onSuccess(IMqttToken asyncActionToken) {
                        // We are connected
                        Log.d(TAG, "onSuccess");


                        Toast.makeText(Manual.this, "connected", Toast.LENGTH_SHORT).show();


                        String payload = "L";
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
                        Toast.makeText(Manual.this, "not connected", Toast.LENGTH_SHORT).show();

                    }

                });

            }
        });


        Right.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    token[0] = client.connect();
                } catch (MqttException e) {
                    e.printStackTrace();
                }
                token[0].setActionCallback(new IMqttActionListener() {
                    @Override
                    public void onSuccess(IMqttToken asyncActionToken) {
                        // We are connected
                        Log.d(TAG, "onSuccess");
                      //  flag_l[0] =1;
                        Toast.makeText(Manual.this, "connected", Toast.LENGTH_SHORT).show();


                        String payload = "R";
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
                        Toast.makeText(Manual.this, "not connected", Toast.LENGTH_SHORT).show();
                       // flag_l[0] =0;
                    }
                });
            }
        });

        Up.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    token[0] = client.connect();
                } catch (MqttException e) {
                    e.printStackTrace();
                }
                token[0].setActionCallback(new IMqttActionListener() {
                    @Override
                    public void onSuccess(IMqttToken asyncActionToken) {
                        // We are connected
                        Log.d(TAG, "onSuccess");
                      //  flag_l[0] =1;
                        Toast.makeText(Manual.this, "connected", Toast.LENGTH_SHORT).show();


                        String payload = "U";
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
                        Toast.makeText(Manual.this, "not connected", Toast.LENGTH_SHORT).show();
                        //flag_l[0] =0;
                    }
                });
            }
        });

        Down.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    token[0] = client.connect();
                } catch (MqttException e) {
                    e.printStackTrace();
                }
                token[0].setActionCallback(new IMqttActionListener() {
                    @Override
                    public void onSuccess(IMqttToken asyncActionToken) {
                        // We are connected
                        Log.d(TAG, "onSuccess");
                        //flag_l[0] =1;
                        Toast.makeText(Manual.this, "connected", Toast.LENGTH_SHORT).show();


                        String payload = "D";
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
                        Toast.makeText(Manual.this, "not connected", Toast.LENGTH_SHORT).show();
                       // flag_l[0] =0;
                    }
                });
            }
        });
    }
}
