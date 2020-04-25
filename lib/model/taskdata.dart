import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todoapp/model/task.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(tasktitle: 'go to gym '),
    Task(tasktitle: 'do homework '),
    Task(tasktitle: 'buy milk '),

  ];
}