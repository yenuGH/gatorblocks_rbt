import 'package:flutter/material.dart';
import 'package:gatorblocks_rbt/widgets/blocks.dart';

class Classes extends StatelessWidget{

  var block1 = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classes'),
        backgroundColor: Colors.teal[600],
      ),
      body: ListView(
        children: <Widget>[
          Card(
              child:
              ListTile(
                leading: Icon(Icons.update, size: 40.0),
                title: Text("Update"),
                subtitle: Text("Update class changes."),
                onTap: () {
                  var route = new MaterialPageRoute(
                    builder: (BuildContext context) => new Blocks(value1: block1.text));
                    Navigator.of(context).push(route);
                },
              ),
            ),
          Card(
            child:
              ListTile(
                leading: Text("Block 1-1"),
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: block1,
                      )
                    )
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}