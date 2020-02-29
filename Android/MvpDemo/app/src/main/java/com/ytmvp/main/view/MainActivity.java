package com.ytmvp.main.view;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.Toast;

import com.ytmvp.R;
import com.ytmvp.base.BaseMvpActivity;
import com.ytmvp.main.contract.MainContract;
import com.ytmvp.main.presenter.MainPresenter;

public class MainActivity extends BaseMvpActivity<MainPresenter> implements MainContract.View {

    @Override
    protected int getLayoutId() {
        return R.layout.activity_main;
    }

    @Override
    protected void initView() {
        mPresenter = new MainPresenter();
        mPresenter.attachView(this);
        mPresenter.loadMessage();
    }

    @Override
    public void showMessage(String message) {
        Toast.makeText(this, message, Toast.LENGTH_LONG).show();
    }
}
