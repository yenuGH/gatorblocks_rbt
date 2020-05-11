import 'package:flutter/material.dart';
import 'package:gatorblocks_rbt/pages/home.dart';
import 'package:gatorblocks_rbt/utils/themeChanger.dart';
import 'package:provider/provider.dart';

void main() => runApp(GatorBlocks());

class GatorBlocks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger> (
      create: (_) => ThemeChanger(ThemeData.dark()),
      //create: (BuildContext context) {},
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      title: 'GatorBlocks',
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
       /* ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ), */
      home: Home(),
      routes: <String, WidgetBuilder>{
        //'/classesPage': (BuildContext context) => ClassesPage(),
        //'/taskPlanner': (BuildContext context) => TaskPlanner("Task Planner"),
        //'/settings': (BuildContext context) => Settings("Settings"),
      },
    );
  }
}


