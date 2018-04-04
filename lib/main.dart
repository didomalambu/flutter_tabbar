import 'package:flutter/material.dart';
import 'package:flutter_tabbar/tab_one.dart' as tabone;
import 'package:flutter_tabbar/tab_two.dart' as tabtwo;
import 'package:flutter_tabbar/tab_three.dart' as tabthree;



void main()
{
  runApp(new MaterialApp
    (
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget
{
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text("Tabbar Flutter"),
        bottom: new TabBar(
          controller: controller,
          tabs: [
            new Tab(icon: new Icon(Icons.shopping_basket),text: "Shopping",),
            new Tab(icon: new Icon(Icons.school),text: "School",),
            new Tab(icon: new Icon(Icons.radio),text: "Radio",),
          ],
        ),
      ),

      body: new TabBarView(
        controller: controller,
        children: [
          new tabone.tab_one(),
          new tabtwo.tab_two(),
          new tabthree.tab_three(),

        ],
      ),
    
    );
  }
}