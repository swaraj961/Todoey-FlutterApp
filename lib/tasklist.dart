import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';



class Tasklist extends StatelessWidget {
final bool checkvalue ;
final String taskname ;
final Function callback;
Tasklist({this.checkvalue,this.taskname,this.callback});


  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true, //maintains space between tiles
      title: Text(
        "Task No ",
        style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        taskname,
        style: checkvalue ? TextStyle(color: Colors.grey[900] ,decoration:  TextDecoration.lineThrough) :TextStyle(color: Colors.grey[900],decoration:null)
      ),
      trailing: CircularCheckBox(
        value: checkvalue,
        onChanged:callback
      ),
    );
  }
}
