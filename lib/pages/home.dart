import 'package:flutter/material.dart';
import 'package:gatorblocks_rbt/widgets/calenderSlider.dart';
import 'package:gatorblocks_rbt/widgets/blocks.dart';
import 'package:gatorblocks_rbt/widgets/drawer.dart';

Map<int, Color> colour ={
  50:Color.fromRGBO(136,14,79, .1),
  100:Color.fromRGBO(136,14,79, .2),
  200:Color.fromRGBO(136,14,79, .3),
  300:Color.fromRGBO(136,14,79, .4),
  400:Color.fromRGBO(136,14,79, .5),
  500:Color.fromRGBO(136,14,79, .6),
  600:Color.fromRGBO(136,14,79, .7),
  700:Color.fromRGBO(136,14,79, .8),
  800:Color.fromRGBO(136,14,79, .9),
  900:Color.fromRGBO(136,14,79, 1),
};

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  hexColour (String colourHexCode){
    String colourNew = '0xff' + colourHexCode;
    colourNew = colourNew.replaceAll('#', '');
    int colourInt = int.parse(colourNew);
    return colourInt;
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      backgroundColor: Color(hexColour('#06894B')),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calendar',
            style: TextStyle(
                fontWeight: FontWeight.bold
            )
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CalendarSlider(),
            Blocks(),
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}