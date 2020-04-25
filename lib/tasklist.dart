import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';



class Tasklist extends StatelessWidget {
final bool checkvalue ;
final String taskname ;
Tasklist({this.checkvalue,this.taskname});
  
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
        style: TextStyle(color: Colors.grey[900]),
      ),
      trailing: CircularCheckBox(
        value: false,
        onChanged:null
      ),
    );
  }
}
