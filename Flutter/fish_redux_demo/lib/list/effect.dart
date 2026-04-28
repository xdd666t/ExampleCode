import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/list/item/state.dart';

import 'action.dart';
import 'bean/item_detail_bean.dart';
import 'state.dart';

Effect<ListState>? buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    ///进入页面就执行的初始化操作
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<ListState> ctx) async {
  String apiUrl = "https://www.wanandroid.com/project/list/1/json";
  try {
    final response = await Dio().get(apiUrl);
    ItemDetailBean itemDetailBean =
        ItemDetailBean.fromJson(response.data is Map<String, dynamic>
            ? response.data as Map<String, dynamic>
            : <String, dynamic>{});
    List<Datas>? itemDetails = itemDetailBean.data?.datas;
    if (itemDetails == null) return;

    ///构建符合要求的列表数据源
    List<ItemState> items = List.generate(itemDetails.length, (index) {
      return ItemState(itemDetail: itemDetails[index]);
    });
    ctx.dispatch(ListActionCreator.updateItem(items));
  } catch (e) {
    print('请求失败: $e');
  }
}
