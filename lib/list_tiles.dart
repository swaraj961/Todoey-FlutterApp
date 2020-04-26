import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoapp/model/taskdata.dart';
import 'package:todoapp/tasklist.dart';
class Listtiles extends StatelessWidget {
  const Listtiles({@required this.controller});
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskObject, child) => ListView.builder(
        itemBuilder: (context, index) {
          return Tasklist(
              taskname: taskObject.tasks[index].tasktitle,
              checkvalue: taskObject.tasks[index].isdone,
              callback: (taskstate) {
                taskObject.updatetask(taskObject.tasks[index]);
              });
        },
        itemCount: taskObject.taskcount, //getter used
        controller: controller,
      ),
    );
  }
}
