/// Created with Android Studio.
/// User: sj
/// Date: 2019-08-11
/// Time: 10:25
/// Description:
import 'package:flutter/material.dart';

///Router跳转以及数据传递
class RoutePushDemo extends StatefulWidget {
  @override
  _RoutePushDemoState createState() => _RoutePushDemoState();
}

class _RoutePushDemoState extends State<RoutePushDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个Route"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Builder(builder: (context) {
              return RaisedButton(
                onPressed: () async {
                  //1: 通过Navigator.push方式不携带跳转,如果需要接受返回的数据，需要通过async异步接受
                  String result = await Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return SecondRoute();
                  }));

                  //2: 通过Navigator.push方式不携带跳转，一定要注册route！！！
//                Navigator.pushNamed(context, SecondRoute.routeName);

                  if (result != null) {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text(result),
                      duration: Duration(milliseconds: 500),
                    ));
                  }
                },
                child: Text("不携带数据跳转"),
              );
            }),
            Builder(builder: (context){
              return RaisedButton(
                onPressed: () async {
                  //1: 通过Navigator.push方式携带跳转
//                Navigator.push(context, MaterialPageRoute(builder: (context) {
//                  return ThirdRoute("我是第一个页面的数据");
//                }));
                  //2: 通过Navigator.push方式携带跳转
                  String str = "我是第一个页面的数据";
                  //疑问为什么只能用var接值，不嫩用String？
                  var result = await Navigator.pushNamed(context, SecondRoute.routeName,
                      arguments: str);
                  if (result != null) {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text(result),
                      backgroundColor: Colors.blue,
                      duration: Duration(milliseconds: 500),
                    ));
                  }
                },
                child: Text("携带数据跳转"),
              );
            }),

          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatefulWidget {
  static const String routeName = "demo/second_route";

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    //show传递过来的数据
    String str = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个Route"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$str",style: TextStyle(color: Colors.blue),),
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("不需要返回数据")),
            FlatButton(
                onPressed: () {
                  Navigator.pop(context, "这是返回的数据");
                },
                child: Text("需要返回数据"))
          ],
        ),
      ),
    );
  }
}

class ThirdRoute extends StatefulWidget {
  static const String routeName = "demo/third_route";
  String string = "";

  ThirdRoute(this.string);

  @override
  _ThirdRouteState createState() => _ThirdRouteState(string);
}

class _ThirdRouteState extends State<ThirdRoute> {
  String string = "";

  _ThirdRouteState(this.string);

  @override
  Widget build(BuildContext context) {
    //show传递过来的数据
//    Scaffold.of(context).showSnackBar(SnackBar(
//      content: Text(string),
//      duration: Duration(seconds: 1),
//    ));
    return Scaffold(
      appBar: AppBar(
        title: Text("第三个Route"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(string),
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("不需要返回数据")),
            FlatButton(
                onPressed: () {
                  Navigator.pop(context, "这是返回的数据");
                },
                child: Text("需要返回数据"))
          ],
        ),
      ),
    );
  }
}
