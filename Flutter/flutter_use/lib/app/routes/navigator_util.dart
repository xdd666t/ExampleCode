import 'package:go_router/go_router.dart';

/// 全局路由导航工具类
class NavigatorUtil {
  /// 返回上级页面
  static void goBack(BuildContext context) {
    context.pop();
  }

  /// 跳转到dialog页面
  static void goDialogPage(BuildContext context) {
    context.go(Routes.dialog);
  }

  /// 跳转到Cubit范例页面
  static void goCounterPage(BuildContext context) {
    context.go(Routes.counter);
  }

  /// 跳转到测试布局界面
  static void goTestLayoutPage(BuildContext context) {
    context.go(Routes.testLayout);
  }
}
