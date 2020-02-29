package com.ytmvp.main.contract;

/**
 * Author 余涛
 * Description 契约接口管理
 * Time 2018/12/10 9:23
 */
public interface MainContract {

    interface Model{
        /**
         *
         * @return
         */
        String setMessage();
    }

    interface View{
        /**
         * 显示信息
         * @param message
         */
        void showMessage(String message);
    }

    interface Presenter{
        /**
         * 加载信息显示
         */
        void loadMessage();
    }

}
