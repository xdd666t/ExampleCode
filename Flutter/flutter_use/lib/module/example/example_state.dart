part of 'example_cubit.dart';

class ExampleState {
  List trees;

  ExampleState init() {
    var trees = [
      //Bloc
      TreeTwiceInfo(
        title: 'flutter_bloc',
        btnInfo: [
          BtnInfo(title: 'Cubit', tag: 'cubit'),
          BtnInfo(title: '测试', tag: 'test1'),
          BtnInfo(title: '测试', tag: 'test2'),
          BtnInfo(title: '测试', tag: 'test3'),
          BtnInfo(title: '测试', tag: 'test4'),
        ],
      ),
      //测试
      TreeTwiceInfo(
        title: '测试',
        btnInfo: [
          BtnInfo(title: '测试', tag: 'test1'),
          BtnInfo(title: '测试', tag: 'test2'),
          BtnInfo(title: '测试', tag: 'test3'),
          BtnInfo(title: '测试', tag: 'test4'),
        ],
      )
    ];
    return ExampleState()..trees = trees;
  }

  ExampleState clone() {
    return ExampleState()..trees = trees;
  }
}
