package com.example.myapplication;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.MessageQueue;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    private TextView msgTv;
    private Handler mHandler = new Handler();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        msgTv = findViewById(R.id.tv_msg);
        //添加IdleHandler实现类
        mHandler.getLooper().getQueue().addIdleHandler(new InfoIdleHandler("我是IdleHandler"));
        mHandler.getLooper().getQueue().addIdleHandler(new InfoIdleHandler("我是大帅比"));

        //消息收发一体
        new Thread(new Runnable() {
            @Override public void run() {
                String info = "第一种方式";
                mHandler.post(new Runnable() {
                    @Override public void run() {
                        msgTv.setText(info);
                    }
                });
            }
        }).start();
    }

    //实现IdleHandler类
    class InfoIdleHandler implements MessageQueue.IdleHandler {
        private String msg;

        InfoIdleHandler(String msg) {
            this.msg = msg;
        }

        @Override
        public boolean queueIdle() {
            msgTv.setText(msg);
            return false;
        }
    }
}