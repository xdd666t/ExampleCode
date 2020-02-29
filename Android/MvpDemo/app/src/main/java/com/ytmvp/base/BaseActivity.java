package com.ytmvp.base;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;

/**
 * Author 余涛
 * Description 功能说明
 * Time 2018/12/10 9:24
 */
public abstract class BaseActivity extends AppCompatActivity {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getLayoutId());
        initView();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }


    /**
     * 获得当前布局，可以去掉在子类中重写onCreate
     * @return
     */
    protected abstract int getLayoutId();


    /**
     * 功能,界面等初始化入口
     */
    protected abstract void initView();


}

