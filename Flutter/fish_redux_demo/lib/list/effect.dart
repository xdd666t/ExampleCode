import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/list/item/state.dart';
import 'action.dart';
import 'bean/item_detail_bean.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    ///进入页面就执行的初始化操作
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<ListState> ctx) async {
  print("....");

  try{
    String apiUrl = "https://www.wanandroid.com/project/list/1/json";

    print(apiUrl);
    Response response = await Dio().get(apiUrl);
    print(response.toString().substring(0, 100));

    ItemDetailBean itemDetailBean = json.decode(response.toString());

    print(itemDetailBean.data.datas[0]);

    List<ItemState> items =
    List.generate(itemDetailBean.data.datas.length, (index) {
      return ItemState(itemDetail: itemDetailBean.data.datas[index]);
    });

    println(items);
    ctx.dispatch(ListActionCreator.updateItem(items));
  }catch(e) {
    print(e);
  }


}
