import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

bool checkvalue = false;

class Tasklist extends StatefulWidget {
  @override
  _TasklistState createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true, //maintains space between tiles
      title: Text(
        "Task No ",
        style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "This is the details of your Task No ",
        style: TextStyle(color: Colors.grey[900]),
      ),
      trailing: CircularCheckBox(
        value: checkvalue,
        onChanged: (ontap) {
          setState(() {
            checkvalue = ontap;
          });
        },
        activeColor: Colors.greenAccent,
      ),
    );
  }
}
