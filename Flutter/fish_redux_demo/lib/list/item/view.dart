import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return _bodyWidget(state);
}

Widget _bodyWidget(ItemState state) {
  final detail = state.itemDetail;
  if (detail == null) return const SizedBox.shrink();

  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    elevation: 5,
    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
    child: Row(
      children: <Widget>[
        //左边图片
        Container(
          margin: const EdgeInsets.all(10),
          width: 180,
          height: 100,
          child: Image.network(
            detail.envelopePic ?? '',
            fit: BoxFit.fill,
            errorBuilder: (_, __, ___) => const Icon(Icons.image),
          ),
        ),
        //右边的纵向布局
        _rightContent(state),
      ],
    ),
  );
}

///item中右边的纵向布局
Widget _rightContent(ItemState state) {
  final detail = state.itemDetail;
  if (detail == null) return const SizedBox.shrink();

  return Expanded(
      child: Container(
    margin: const EdgeInsets.all(10),
    height: 120,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        //标题
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              detail.title ?? '',
              style: const TextStyle(fontSize: 16),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        //内容
        Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                detail.desc ?? '',
                style: const TextStyle(fontSize: 12),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            )),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              //作者
              Row(
                children: <Widget>[
                  const Text("作者：", style: TextStyle(fontSize: 12)),
                  Expanded(
                    child: Text(detail.author ?? '',
                        style: const TextStyle(color: Colors.blue, fontSize: 12),
                        overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
              //时间
              Row(children: <Widget>[
                const Text("时间：", style: TextStyle(fontSize: 12)),
                Expanded(
                  child: Text(detail.niceDate ?? '',
                      style: const TextStyle(color: Colors.blue, fontSize: 12),
                      overflow: TextOverflow.ellipsis),
                )
              ])
            ],
          ),
        ),
      ],
    ),
  ));
}
