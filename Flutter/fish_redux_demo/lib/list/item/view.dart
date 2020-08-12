import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return _bodyWidget(state);
}

Widget _bodyWidget(ItemState state) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    elevation: 5,
    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
    child: Row(
      children: <Widget>[
        //左边图片
        Container(
          margin: EdgeInsets.all(10),
          width: 180,
          height: 100,
          child: Image.network(
            state.itemDetail.envelopePic,
            fit: BoxFit.fill,
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
  return Expanded(
      child: Container(
    margin: EdgeInsets.all(10),
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
              state.itemDetail.title,
              style: TextStyle(fontSize: 16),
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
                state.itemDetail.desc,
                style: TextStyle(fontSize: 12),
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
                  Text("作者：", style: TextStyle(fontSize: 12)),
                  Expanded(
                    child: Text(state.itemDetail.author,
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                        overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
              //时间
              Row(children: <Widget>[
                Text("时间：", style: TextStyle(fontSize: 12)),
                Expanded(
                  child: Text(state.itemDetail.niceDate,
                      style: TextStyle(color: Colors.blue, fontSize: 12),
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
