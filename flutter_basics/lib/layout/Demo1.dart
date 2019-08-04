/// Created with Android Studio.
/// User: sj
/// Date: 2019-08-03
/// Time: 21:07
/// Description:
import 'package:flutter/material.dart';

///通过两种方式写出相对父布局居左和居右的效果
class LayoutDemoOne extends StatefulWidget {
  @override
  _LayoutDemoOneState createState() => _LayoutDemoOneState();
}

class _LayoutDemoOneState extends State<LayoutDemoOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("相对父布局居左和居右"),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "1. 通过Stack和Align实现",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "注册",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "忘记密码",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "2. 通过Row实现",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "注册",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  "忘记密码",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
