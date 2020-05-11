import 'package:flutter/material.dart';
//import 'package:gatorblocks_rbt/models/settingsModel.dart';
import 'package:gatorblocks_rbt/pages/classes.dart';
import 'package:gatorblocks_rbt/pages/general.dart';


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
      body: ListView(
        children: <Widget>[
          Card(
            child: 
            ListTile(
              leading: Icon(Icons.settings, size: 40.0),
              title: Text("General"),
              subtitle: Text("Customize to make it your own."),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GeneralSettings()));
              },
              )
            ),
            Card(
              child:
              ListTile(
                leading: Icon(Icons.class_, size: 40.0),
                title: Text("Classes"),
                subtitle: Text("Manage your classes."),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Classes()));
                },
              )
            ),
            Card(
              child:
              ListTile(
                leading: Icon(Icons.account_circle, size: 40.0),
                title: Text("Account"),
                subtitle: Text("Account settings."),
                onTap: () {},
              ),
            ),
            Card(
              child: 
              ListTile(
                leading: Icon(Icons.laptop, size: 40),
                title: Text("Useless Button"),
                subtitle: Text("This button does absolutely nothing. Stop tapping on it. You're wasting your time. Stop it. Stop."),
                onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
