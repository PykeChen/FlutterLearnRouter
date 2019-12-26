// 这个App没有使用Material组件,  如Scaffold.
// 一般来说, app没有使用Scaffold的话，会有一个黑色的背景和一个默认为黑色的文本颜色。
// 这个app，将背景色改为了白色，并且将文本颜色改为了黑色以模仿Material app
import 'package:flutter/material.dart';

/// 为什么不能用,显示不出来了布局
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget titleSection = new Container(
      height: 200,
      width: 200,
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  height: 100.0,
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                        color:Colors.white
                    ),
                  ),
                ),

              ],
            ),
          ),
          new Text('41', textDirection: TextDirection.ltr),
        ],
      ),
    );

    return new Container(
      decoration: new BoxDecoration(color: Colors.red),
      child: titleSection,
//      child: new Center(
//        child:  new Text('41',
//            textDirection: TextDirection.ltr,
//            style: new TextStyle(fontSize: 40.0, color: Colors.black87)),
//      ),
    );



  }
}