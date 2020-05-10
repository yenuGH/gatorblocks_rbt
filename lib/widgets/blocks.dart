import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class Blocks extends StatefulWidget {
  @override
  _BlocksState createState() => _BlocksState();
}

class _BlocksState extends State<Blocks> {

  hexColour (String colourHexCode){
    String colourNew = '0xff' + colourHexCode;
    colourNew = colourNew.replaceAll('#', '');
    int colourInt = int.parse(colourNew);
    return colourInt;
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 600,
      decoration: BoxDecoration(
        color: Color(hexColour('#EDEDED')),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        // border: Border.all(
        //   color: Colors.black,
        //   width: 3,
        // )
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Card(
            child:
            ListTile(
              title: Text("Placeholder"),
              subtitle: Text("8:30 - 9:39"),
            )
          ),
          Card(
            child:
            ListTile(
              title: Text("Placeholder"),
              subtitle: Text("8:30 - 9:39"),
            )
          ),
          Card(
            child:
            ListTile(
              title: Text("Placeholder"),
              subtitle: Text("8:30 - 9:39"),
            )
          ),
          Card(
            child:
            ListTile(
              title: Text("Placeholder"),
              subtitle: Text("8:30 - 9:39"),
            )
          ),
          Card(
            child:
            ListTile(
              title: Text("Placeholder"),
              subtitle: Text("8:30 - 9:39"),
            )
          ),
          Card(
            child:
            ListTile(
              title: Text("Placeholder"),
              subtitle: Text("8:30 - 9:39"),
            )
          ),
        ],
      )
    );
  }



  // Widget eventsContainer(){
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     height: 70,
  //     padding: EdgeInsets.all(3),
  //     decoration: BoxDecoration(
  //       color: Colors.black,
  //     ),
  //     child: Column(
  //       children: <Widget>[
  //         Text("Test 1",
  //         style: TextStyle(
  //           color: Colors.white,
  //         )
  //         )

  //       ],
  //     )
  //   );
  // }

  // Widget blocks(){
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     height: 50,
  //     margin: EdgeInsets.only(top: 6, bottom: 6),
  //     padding: EdgeInsets.all(2),
  //     decoration: BoxDecoration(
  //        color: Color(hexColour('#06894B')),
  //        borderRadius: BorderRadius.circular(30),
  //        boxShadow: <BoxShadow>[
  //          BoxShadow(
  //            offset: Offset(0,3), color: Colors.black38, blurRadius: 10
  //          ),
  //        ]
  //       ),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         Spacer(flex:1),
  //         Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text("8:30",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             Text("9:39",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //               ),
  //             ),
  //           ]
  //         ),
  //         Spacer(flex:4),
  //         Text("Block 1-1",
  //           style: TextStyle(
  //           color: Colors.white,
  //           fontSize: 18,
  //           )
  //         ),
  //         Spacer(flex:6),
  //       ]
  //     ),
  //   );
  // }

  // Widget flex(){
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     height: 50,
  //     margin: EdgeInsets.only(top: 6, bottom: 6),
  //     padding: EdgeInsets.all(2),
  //     decoration: BoxDecoration(
  //        color: Color(hexColour('#14A946')),
  //        borderRadius: BorderRadius.circular(30),
  //        boxShadow: <BoxShadow>[
  //          BoxShadow(
  //            offset: Offset(0,3), color: Colors.black38, blurRadius: 10
  //          ),
  //        ]
  //       ),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         Spacer(flex:1),
  //         Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text("9:44",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             Text("10:26",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //               ),
  //             ),
  //           ]
  //         ),
  //         Spacer(flex:5),
  //         Text("Flex",
  //           style: TextStyle(
  //           color: Colors.white,
  //           fontSize: 18,
  //           )
  //         ),
  //         Spacer(flex:7),
  //       ]
  //     ),
  //   );
  // }
  // Widget blocks2(){
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     height: 50,
  //     margin: EdgeInsets.only(top: 6, bottom: 6),
  //     padding: EdgeInsets.all(2),
  //     decoration: BoxDecoration(
  //        color: Color(hexColour('#06894B')),
  //        borderRadius: BorderRadius.circular(30),
  //        boxShadow: <BoxShadow>[
  //          BoxShadow(
  //            offset: Offset(0,3), color: Colors.black38, blurRadius: 10
  //          ),
  //        ]
  //       ),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         Spacer(flex:1),
  //         Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text("10:32",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             Text("11:41",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //               ),
  //             ),
  //           ]
  //         ),
  //         Spacer(flex:4),
  //         Text("Block 1-2",
  //           style: TextStyle(
  //           color: Colors.white,
  //           fontSize: 18,
  //           )
  //         ),
  //         Spacer(flex:6),
  //       ]
  //     ),
  //   );
  // }
  // Widget lunch(){
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     height: 50,
  //     margin: EdgeInsets.only(top: 6, bottom: 6),
  //     padding: EdgeInsets.all(2),
  //     decoration: BoxDecoration(
  //        color: Color(hexColour('#14A946')),
  //        borderRadius: BorderRadius.circular(30),
  //        boxShadow: <BoxShadow>[
  //          BoxShadow(
  //            offset: Offset(0,3), color: Colors.black38, blurRadius: 10
  //          ),
  //        ]
  //       ),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         Spacer(flex:1),
  //         Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text("11:41",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             Text("12:15",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //               ),
  //             ),
  //           ]
  //         ),
  //         Spacer(flex:4),
  //         Text("Lunch",
  //           style: TextStyle(
  //           color: Colors.white,
  //           fontSize: 18,
  //           )
  //         ),
  //         Spacer(flex:6),
  //       ]
  //     ),
  //   );
  // }
  // Widget blocks3(){
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     height: 50,
  //     margin: EdgeInsets.only(top: 6, bottom: 6),
  //     padding: EdgeInsets.all(2),
  //     decoration: BoxDecoration(
  //        color: Color(hexColour('#06894B')),
  //        borderRadius: BorderRadius.circular(30),
  //        boxShadow: <BoxShadow>[
  //          BoxShadow(
  //            offset: Offset(0,3), color: Colors.black38, blurRadius: 10
  //          ),
  //        ]
  //       ),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         Spacer(flex:1),
  //         Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text("12:20",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             Text("1:29",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //               ),
  //             ),
  //           ]
  //         ),
  //         Spacer(flex:4),
  //         Text("Block 1-3",
  //           style: TextStyle(
  //           color: Colors.white,
  //           fontSize: 18,
  //           )
  //         ),
  //         Spacer(flex:6),
  //       ]
  //     ),
  //   );
  // }
  // Widget blocks4(){
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     height: 50,
  //     margin: EdgeInsets.only(top: 6, bottom: 6),
  //     padding: EdgeInsets.all(2),
  //     decoration: BoxDecoration(
  //        color: Color(hexColour('#14A946')),
  //        borderRadius: BorderRadius.circular(30),
  //        boxShadow: <BoxShadow>[
  //          BoxShadow(
  //            offset: Offset(0,3), color: Colors.black38, blurRadius: 10
  //          ),
  //        ]
  //       ),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         Spacer(flex:1),
  //         Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text("1:35",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             Text("2:44",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //               ),
  //             ),
  //           ]
  //         ),
  //         Spacer(flex:4),
  //         Text("Block 1-4",
  //           style: TextStyle(
  //           color: Colors.white,
  //           fontSize: 18,
  //           )
  //         ),
  //         Spacer(flex:6),
  //       ]
  //     ),
  //   );
  // }
 }