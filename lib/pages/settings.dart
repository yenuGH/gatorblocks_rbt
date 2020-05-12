//import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gatorblocks_rbt/pages/settings/account.dart';
//import 'package:gatorblocks_rbt/models/settingsModel.dart';
import 'package:gatorblocks_rbt/pages/settings/classes.dart';
import 'package:gatorblocks_rbt/pages/settings/general.dart';
import 'package:gatorblocks_rbt/widgets/hiddenOsuPop.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
//import 'package:webview_flutter/webview_flutter.dart';


class Settings extends StatelessWidget {
  final String title;
  int _counter = 0;


  void _incrementCounter() {
    _counter++;
  }

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
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => AccountSettings()));
                },
              ),
            ),
            Card(
              child: 
              ListTile(
                leading: Icon(Icons.laptop, size: 40),
                title: Text("Useless Button"),
                subtitle: Text("This button does absolutely nothing. Stop tapping on it. You're wasting your time. Stop it. Stop."),
                onTap: () {
                  _incrementCounter();                  
                  if (_counter < 10) {
                    print(_counter);
                  }
                  else if (_counter >= 10) {
                    _counter = 0;
                    print("You've pressed the useless button $_counter times.");
                    return Alert(context: context, 
                      title: "Stop tapping this button you moron. Go back to work",
                      desc: "Like, do you know how much osu! you can be playing at this moment?",
                      buttons: [
                        DialogButton(
                          child: Text("I understand.",
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HiddenOsu()));
                          //Navigator.pop(context);
                          },
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(116, 116, 191, 1.0),
                            Color.fromRGBO(52, 138, 199, 1.0)
                          ])
                        )
                      ]
                    ).show();
                  }
                },
            ),
          ),
        ],
      ),
    );
  }

}


