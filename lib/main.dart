import 'package:flutter/material.dart';
import 'package:gatorblocks_rbt/pages/home.dart';
//import 'package:gatorblocks_rbt/pages/settings.dart';
//import 'package:gatorblocks_rbt/pages/taskPlanner.dart';

void main() => runApp(GatorBlocks());

class GatorBlocks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GatorBlocks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),
      home: Home(),
      routes: <String, WidgetBuilder>{
        //'/taskPlanner': (BuildContext context) => TaskPlanner("Task Planner"),
        //'/settings': (BuildContext context) => Settings("Settings"),
      },
    );
  }
}


