import 'package:flutter/material.dart';

class Classes extends StatelessWidget{
  final block1 = TextEditingController();
  final block2 = TextEditingController();
  final block3 = TextEditingController();
  final block4 = TextEditingController();
  final block5 = TextEditingController();
  final block6 = TextEditingController();
  final block7 = TextEditingController();
  final block8 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classes'),
      ),
      body: ListView(
        children: <Widget>[
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