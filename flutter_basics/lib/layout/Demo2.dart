/// Created with Android Studio.
/// User: sj
/// Date: 2019-08-04
/// Time: 15:57
/// Description:
import 'package:flutter/material.dart';

///MainAxisAlignment属性详解
///spaceBetween: 把空闲空间均匀地分配给孩子们
///spaceAround: 在两个孩子之间平均分配空闲的空间以及第一个和最后一个孩子前后的一半空间
///spaceEvenly: 在孩子之间，以及在第一个和最后一个孩子之前和之后，均匀地放置空闲空间

class LayoutDemoTwo extends StatefulWidget {
  String title;

  LayoutDemoTwo(this.title);

  @override
  _LayoutDemoTwoState createState() => _LayoutDemoTwoState(this.title);
}

class _LayoutDemoTwoState extends State<LayoutDemoTwo> {
  final String title;

  _LayoutDemoTwoState(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                "MainAxisAlignment之spaceBetween",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第一个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第二个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第一个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第二个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第三个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第一个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第二个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第三个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第四个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "MainAxisAlignment之spaceAround",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第一个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第二个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第一个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第二个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第三个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第一个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第二个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第三个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第四个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "MainAxisAlignment之spaceEvenly",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第一个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第二个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第一个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第二个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第三个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第一个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第二个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第三个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Text(
                      "第四个",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
