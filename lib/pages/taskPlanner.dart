import 'package:flutter/material.dart';
import 'package:gatorblocks_rbt/models/tasks.dart';
import 'package:gatorblocks_rbt/utils/databaseClient.dart';
import 'package:gatorblocks_rbt/utils/dateFormatter.dart';
//import 'package:gatorblocks_rbt/models/tasks.dart';

class TaskPlanner extends StatefulWidget {

  final String title;
  TaskPlanner(this.title);

  @override
  _TaskPlannerState createState() => _TaskPlannerState();
}

class _TaskPlannerState extends State<TaskPlanner> {

  final TextEditingController _textEditingController = TextEditingController();
  var db = DatabaseHelper();
  final List<Tasks> _itemList = <Tasks>[];
  
  @override
  void initState() {
    super.initState();

    _readTaskList();
  }

  void _handleSubmitted(String text) async {
    _textEditingController.clear();

    Tasks tasksItem = Tasks(text, dateFormatted());
    int savedItemId = await db.saveItem(tasksItem);

    Tasks addedItem = await db.getItem(savedItemId);

    setState(() {
      _itemList.insert(0, addedItem);
        
    });

    print("Item saved ID: $savedItemId");

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: false,
              itemCount: _itemList.length,
              itemBuilder: (_,  int index) {
                return Card(
                  color: Colors.white10,
                  child: ListTile(
                    title: _itemList[index],
                    onLongPress: () => _updateItem(_itemList[index], index),
                    trailing: Listener(
                      key: Key(_itemList[index].itemName),
                      child: Icon(Icons.remove_circle, color: Colors.redAccent,),
                      onPointerDown: (pointerEvent)  => 
                        _deleteTasks(_itemList[index].id, index),
                    ),
                  ),
                );
              }
           ),         
          ),
          Divider(
            height: 1.0,
          ),
        ],
      ),
      
      appBar: AppBar(
        title: Text("Task Planner"),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        tooltip: "Add Item",
        onPressed: _showFormDialog,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(null),
              //onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  void _showFormDialog() {
    var alert = AlertDialog(
      content: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _textEditingController,
              autofocus: true,
              decoration: InputDecoration(
                labelText: "Task",
                hintText: "eg. Presentation on Monday.",
                icon: Icon(Icons.note_add),
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        FlatButton(onPressed: () {
          _handleSubmitted(_textEditingController.text);
          _textEditingController.clear();
          Navigator.pop(context);
          },
          child: Text("Save")
        ),
         FlatButton(onPressed: () => Navigator.pop(context),
          child: Text("Cancel"))
      ],
    );
  
    showDialog(context: context, 
      builder:(_){
        return alert;
      });
  }

  _readTaskList() async {
    List items = await db.getItems();
    items.forEach((item) {
      //Tasks tasksItem = Tasks.map(items);
      setState(() {
        _itemList.add(Tasks.map(item));
      });
      //print("DB Items: ${tasksItem.itemName}");
    });
  }

  _deleteTasks(int id, int index) async {
    debugPrint("Deleted item!");

    await db.deleteItem(id);
    setState(() {
      _itemList.removeAt(index);
    });
  }

  _updateItem(Tasks item, int index) {
    var alert = AlertDialog(
      title: Text("Update Item"),
      content: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _textEditingController,
              autofocus: true,
              decoration: InputDecoration(
                labelText: "Previous: " + _itemList[index].itemName.toString(),
                hintText: "Update your task!",
                icon: Icon(Icons.update),
              ),

            ),
          )
        ],
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () async {
            Tasks newItemUpdated = Tasks.fromMap(
              {"itemName": _textEditingController.text,
                "dateCreated": dateFormatted(),
                "id": item.id,
              },
              
            );
            _textEditingController.clear();
          _handleSubmittedUpdate(index, item); // redrawing the screen bro
          await db.updateItem(newItemUpdated); // updating the new updated item
          setState(() {
            _readTaskList(); // redrawing / updating the screen with all items saved in the database
          });
          Navigator.pop(context);

          },
          child: Text("Update")
        ),
        FlatButton(onPressed: ()  => Navigator.pop(context), 
          child: Text("Cancel"),
          ),
      ],
    );
  
  showDialog(context: context, builder: (_) {
    return alert;
  });
  
  }

  void _handleSubmittedUpdate(int index, Tasks item) {
    setState(() {
      _itemList.removeWhere((element) {
        _itemList[index].itemName == item.itemName;
      });
    });
  }
}