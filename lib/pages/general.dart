import 'package:flutter/material.dart';
import 'package:gatorblocks_rbt/utils/themeChanger.dart';
import 'package:provider/provider.dart';

class GeneralSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return new Scaffold(
      appBar: AppBar(
        title: Text('General'),
        backgroundColor: Colors.teal[600],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.brightness_3, size: 50.0),
              title: Text("Dark Mode"),
              subtitle: Text("Change the app to a dark mode theme!"),
              onTap: () {
                _themeChanger.setTheme(ThemeData.dark());
              },
            )
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.brightness_5, size: 50.0),
              title: Text("Light Mode"),
              subtitle: Text("Change the app to a light mode theme!"),
              onTap: () {
                _themeChanger.setTheme(ThemeData.light());
              },
            )
          ),
        ],
      )
    );
  }
}