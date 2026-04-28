import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_use/views/dialog/smart/flutter_smart_dialog.dart';

import 'app/routes/routes.dart';
import 'module/main/main_view.dart';
import 'module/example/bloc/counter/counter_view.dart';
import 'module/example/layout/test_layout/test_layout_view.dart';
import 'module/function/dialog/dialog_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // 路由配置
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.main,
        builder: (context, state) => const MainPage(),
      ),
      GoRoute(
        path: Routes.dialog,
        builder: (context, state) => const DialogPage(),
      ),
      GoRoute(
        path: Routes.counter,
        builder: (context, state) => const CounterPage(),
      ),
      GoRoute(
        path: Routes.testLayout,
        builder: (context, state) => const TestLayoutPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      builder: (BuildContext context, Widget? child) {
        return Material(
          type: MaterialType.transparency,
          child: FlutterSmartDialog(child: FlutterEasyLoading(child: child)),
        );
      },
    );
  }
}
