///无参数请求回调
typedef ParamVoidCallback = void Function();

///回调一个参数
typedef ParamSingleCallback = void Function(dynamic data);

///回到俩个参数
typedef ParamTwiceCallback = void Function(dynamic dataOne, dynamic dataTwo);

///回调三个参数
typedef ParamThreeCallback = void Function(
    dynamic dataOne, dynamic dataTwo, dynamic threeData);
