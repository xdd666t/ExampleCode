package com.ytmvp.main.presenter;

import com.ytmvp.base.BasePresenter;
import com.ytmvp.main.contract.MainContract;
import com.ytmvp.main.model.MainModel;

/**
 * Author 余涛
 * Description 功能说明
 * Time 2018/12/10 9:23
 */
public class MainPresenter extends BasePresenter<MainContract.View> implements MainContract.Presenter {

    protected MainContract.Model mModel = new MainModel();

    @Override
    public void loadMessage() {
        mView.showMessage(mModel.setMessage());
    }


}