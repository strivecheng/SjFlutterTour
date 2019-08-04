import 'package:flutter/material.dart';
import 'package:flutter_basics/layout/Demo1.dart';
import 'package:flutter_basics/layout/Demo2.dart';

import 'common/bean/example_item_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter实例合集',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter实例合集'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ExampleItemInfo> exampleItemInfoList = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ExampleItemInfo exampleItemInfo = new ExampleItemInfo("相对父布局居左和居右");
    exampleItemInfoList.add(exampleItemInfo);

    exampleItemInfo = new ExampleItemInfo("MainAxisAlignment属性详解");
    exampleItemInfoList.add(exampleItemInfo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.white,
              child: Text(
                "解决问题Demo合集",
                style: TextStyle(fontSize: 22.0, color: Colors.blueAccent),
              ),
            ),
            ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.grey,
                  height: 1,
                );
              },
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.white,
                  child: ListTile(
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                      exampleItemInfoList[index].title,
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      switch (index) {
                        case 0:
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LayoutDemoOne();
                          }));
                          break;
                        case 1:
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return LayoutDemoTwo(exampleItemInfoList[index].title);
                              }));
                          break;
                        default:
                      }
                    },
                  ),
                );
              },
              itemCount: exampleItemInfoList.length,
            )
          ],
        ),
      ),
    );
  }
}
