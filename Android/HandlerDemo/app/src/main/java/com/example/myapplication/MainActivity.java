package com.example.myapplication;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.MessageQueue;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    private TextView msgTv;
    private Button bt_fun;
    private Handler mHandler = new Handler(new Handler.Callback() {
        //接收消息,刷新UI
        @Override
        public boolean handleMessage(@NonNull Message msg) {
            if (msg.what == 1) {
                msgTv.setText(msg.obj.toString());
            }
            //false 重写Handler类的handleMessage会被调用,  true 不会被调用
            return false;
        }
    });

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        msgTv = findViewById(R.id.tv_msg);
        bt_fun = findViewById(R.id.bt_fun);
        //添加IdleHandler实现类
        mHandler.getLooper().getQueue().addIdleHandler(new InfoIdleHandler("我是IdleHandler"));
        mHandler.getLooper().getQueue().addIdleHandler(new InfoIdleHandler("我是大帅比"));

        //发送消息
        new Thread(new Runnable() {
            @Override
            public void run() {
                Message msgOne = Message.obtain();
                msgOne.what = 1;
                msgOne.obj = "第二种方式 --- 1";
                msgOne.setAsynchronous(true);
                mHandler.sendMessage(msgOne);


                Message msgThree = Message.obtain();
                msgThree.what = 1;
                msgThree.obj = "第二种方式 --- 1111111111111";
                mHandler.sendMessageDelayed(msgThree, 3000);
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