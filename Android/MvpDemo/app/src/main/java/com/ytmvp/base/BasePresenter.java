package com.ytmvp.base;

/**
 * Author 余涛
 * Description 基础逻辑类
 * Time 2018/12/10 10:27
 */
public abstract class BasePresenter<V> {
    protected V mView;

    /**
     * 绑定view
     * @param view
     */
    public void attachView(V view){
        this.mView = view;
    }

    /**
     * 解除绑定
     */
    public void detachView(){
        this.mView = null;
    }

    /**
     * 判断view是否被绑定
     * @return
     */
    public boolean isViewAttached() {
        return mView != null;
    }

}

