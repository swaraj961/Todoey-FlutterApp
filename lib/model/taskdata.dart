import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todoapp/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(tasktitle: 'go to gym '),
    Task(tasktitle: 'do homework '),
    Task(tasktitle: 'buy milk '),
  ];

  int get taskcount {
    return tasks.length;
  }

  void addtask(String newtittle) {
    final task = Task(tasktitle: newtittle);

    return tasks.add(task);
    
  }

  void updatetask(Task taskname){
    taskname.togglecheck();
    notifyListeners();
  }
}
