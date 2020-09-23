///无参数请求回调
typedef ParamVoidCallback<R, O> = R Function();

///回调一个参数
typedef ParamSingleCallback<R, D> = R Function(D data);

///回到俩个参数
typedef ParamTwiceCallback<R, O, T> = R Function(O dataOne, T dataTwo);

///回调三个参数
typedef ParamThreeCallback<R, O, T, E> = R Function(
    O dataOne, T dataTwo, E threeData);
