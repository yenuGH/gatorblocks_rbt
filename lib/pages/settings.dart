import 'package:flutter/material.dart';
import 'package:gatorblocks_rbt/models/settingsModel.dart';

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
              //leading: Icon(options.icon),
              onTap: () {
                print(options[index].title);
              },
              leading: options[index].icon,
              title: Text(options[index].title),
              subtitle: Text(options[index].subtitle),
            ),
          );
        }
      ),
//      body: ListView.builder(
//        itemCount: options.length,
//        itemBuilder: (context, index){
//          if (index == 0) {
//            return SizedBox(height: 15.0);
//          }
//          else if(index == options.length + 1) {
//              return SizedBox(height: 100.0);
//            }
//          return Container(
//            alignment: Alignment.center,
//            margin: EdgeInsets.all(10.0),
//            width: double.infinity,
//            height: 80.0,
//            decoration: BoxDecoration(
//              color: Colors.white,
//              borderRadius: BorderRadius.circular(10.0),
//              border: Border.all(color: Colors.black26),
//            ),
//            child: ListTile(
//              leading: options[index-1].icon,
//              title: Text(
//                options[index-1].title,
//                style: TextStyle(
//                  color: Colors.grey[600]
//                ),
//              ),
//              subtitle: Text(
//                options[index-1].subtitle,
//                style: TextStyle(
//                  color: Colors.grey,
//                ),
//              ),
//              onTap: () {
//
//              },
//            ),
//          );
//        }
//      ),
//      body: Center(
//        child: Text(
//          "Settings Screen",
//          style: TextStyle(
//            fontSize: 30.0,
//            fontWeight: FontWeight.bold,
//            letterSpacing: 2.0,
//            color: Colors.grey[800],
//            fontFamily: 'SourceSansPro',
//          ),
//        ),
//      ),
    );
  }
}
