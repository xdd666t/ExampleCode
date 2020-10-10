import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart' hide Page, Router;

import 'app/routes/application.dart';
import 'app/routes/routes.dart';
import 'module/main/main_view.dart';
import 'views/dialog/bottom/data/bottom_single_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //路由初始化代码
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return MaterialApp(
      onGenerateRoute: Application.router.generator,
      home: MainPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    List<InfoBean> list = [];
    for (var i = 0; i < 10; i++) {
      list.add(InfoBean(name: "姓名-$i", id: i));
    }
    showBottomSingleDialog<InfoBean>(
      context,
      list: list,
      showKey: 'name',
      callback: (item) {
        print(item.name);
        print(item.id);
      },
    );

    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class InfoBean {
  String name;
  int id;

  InfoBean({this.id, this.name});

  /// jsonDecode(jsonStr) 方法中会调用实体类的这个方法。如果实体类中没有这个方法，会报错。
  Map toJson() {
    Map map = Map();
    map["name"] = this.name;
    map["id"] = this.id;
    return map;
  }
}
