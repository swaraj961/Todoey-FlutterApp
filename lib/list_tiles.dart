import 'package:flutter/material.dart';
import 'package:todoapp/model/task.dart';
import 'package:todoapp/tasklist.dart';
class Listtiles extends StatelessWidget {
  const Listtiles({@required this.tasks, this.controller});
  final ScrollController controller;
  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context , index){
        return Tasklist(
          taskname: tasks[index].tasktitle,
          checkvalue: tasks[index].isdone,
        );
      },
itemCount: tasks.length,
controller: controller,
      );
  }
}