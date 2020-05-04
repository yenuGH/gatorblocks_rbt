import 'package:flutter/material.dart';
//import 'package:gatorblocks_rbt/main.dart';
import 'package:gatorblocks_rbt/pages/settings.dart';
import 'package:gatorblocks_rbt/pages/taskPlanner.dart';


class AppDrawer extends Drawer {
  AppDrawer({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => new Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(""),
          accountEmail: Text("GatorBlocks"),
          decoration: BoxDecoration(
            color: Colors.green[400]
          ),
        ),
        ListTile(
          title: Text("Task Planner"),
          trailing: Icon(Icons.dashboard),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => TaskPlanner("TaskPlanner")));
          },
        ),
        Divider(),
        ListTile(
          title: Text("School Website"),
          trailing: Icon(Icons.web),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Staff Contact Directory"),
          trailing: Icon(Icons.contacts),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(),
        ListTile(
          title: Text("Settings"),
          trailing: Icon(Icons.settings),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => Settings("Settings")));
          },
        ),
      ],
    ),
  );
}