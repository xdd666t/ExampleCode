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
  String apiUrl = "https://www.wanandroid.com/project/list/1/json";
  Response response = await Dio().get(apiUrl);
  ItemDetailBean itemDetailBean =
      ItemDetailBean.fromJson(json.decode(response.toString()));
  List<Datas> itemDetails = itemDetailBean.data.datas;
  List<ItemState> items = List.generate(itemDetails.length, (index) {
    return ItemState(itemDetail: itemDetails[index]);
  });
  ctx.dispatch(ListActionCreator.updateItem(items));
}
