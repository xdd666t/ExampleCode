part of 'example_cubit.dart';

class ExampleState {
  List items;

  ExampleState init() {
    var items = [
      BtnInfo(title: 'Cubit', tag: 'cubit'),
      BtnInfo(title: '测试', tag: 'test'),
      BtnInfo(title: '测试', tag: 'test'),
      BtnInfo(title: '测试', tag: 'test'),
      BtnInfo(title: '测试', tag: 'test'),
    ];
    return ExampleState()..items = items;
  }

  ExampleState clone() {
    return ExampleState()..items = items;
  }
}

