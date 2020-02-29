package com.tao.example;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;


import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.android.FlutterFragment;
import io.flutter.app.FlutterFragmentActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterEngineCache;
import io.flutter.embedding.engine.dart.DartExecutor;


public class MainActivity extends FragmentActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

//        //设置默认位置
//        Intent intent = FlutterActivity.createDefaultIntent(this);

        //选择性跳转某个路由界面
//        Intent intent = FlutterActivity.withNewEngine()
//                .initialRoute("/you/route/") //设置你的路由地址
//                .build(this);

        //使用缓存的FlutterEngine(最大程度地减少启动标准的延迟)
//        FlutterEngine flutterEngine = new FlutterEngine(this);  //初始路由
//        //flutterEngine.getNavigationChannel().setInitialRoute("your/route/here"); //自定义路由
//        //开始执行Dart代码以预热FlutterEngine。
//        flutterEngine.getDartExecutor().executeDartEntrypoint(DartExecutor.DartEntrypoint.createDefault());
//        //缓存FlutterActivity要使用的FlutterEngine。
//        FlutterEngineCache.getInstance().put("my_engine_id", flutterEngine);
//        Intent intent = FlutterActivity
//                .withCachedEngine("my_engine_id")
//                .build(this);

//
//        findViewById(R.id.flutter_button).setOnClickListener(v -> {
//            startActivity(intent);
//        });


        //直接启动FlutterFragment
//        FragmentManager fragmentManager = getSupportFragmentManager();
//        //默认路由,相当于:initialRoute("/")
//        //FlutterFragment flutterFragment = FlutterFragment.createDefault();
//        FlutterFragment flutterFragment = FlutterFragment.withNewEngine()
//                .initialRoute("/")   //设置路由
//                .build();
//        fragmentManager
//                .beginTransaction()
//                .add(R.id.flutter_ui, flutterFragment, "flutter_fragment")
//                .commit();


        //使用缓存的FlutterEngine(最大程度地减少启动标准的延迟)
        FragmentManager fragmentManager = getSupportFragmentManager();
        FlutterEngine flutterEngine = new FlutterEngine(this);  //初始路由
        // flutterEngine.getNavigationChannel().setInitialRoute("/"); //自定义路由
        //开始执行Dart代码以预热FlutterEngine。
        flutterEngine.getDartExecutor().executeDartEntrypoint(DartExecutor.DartEntrypoint.createDefault());
        FlutterEngineCache.getInstance().put("my_engine_id", flutterEngine);//缓存要使用的FlutterEngine。

        findViewById(R.id.flutter_button).setOnClickListener(v -> {
                FlutterFragment flutterFragment = FlutterFragment.withCachedEngine("my_engine_id").build();
                fragmentManager
                        .beginTransaction()
                        .add(R.id.flutter_ui, flutterFragment, "flutter_fragment")
                        .commit();
            });

    }
}
