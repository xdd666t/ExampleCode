package com.ytmvp.base;

/**
 * Author 余涛
 * Description 功能说明
 * Time 2018/12/10 10:27
 */
public abstract class BaseMvpActivity<T extends BasePresenter> extends BaseActivity {
    protected T mPresenter;

    @Override
    protected void onDestroy() {
        if (mPresenter != null){
            mPresenter.detachView();
        }
        super.onDestroy();
    }



}
