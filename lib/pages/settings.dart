import 'package:flutter/material.dart';
import 'package:gatorblocks_rbt/models/settingsModel.dart';
import 'package:gatorblocks_rbt/pages/classes.dart';


class Option{



}

class Settings extends StatelessWidget {
  final String title;

  

  Settings(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              
              










            ),
          );
        }
      ),
    );
  }
}
