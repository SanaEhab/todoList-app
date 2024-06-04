import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoey_app/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [

  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String? newTaskTitle){
    if(newTaskTitle !=null){
      final task = Task(name: newTaskTitle);
      _tasks.add(task);
      notifyListeners();
    }
  }

  void updateData(Task task){
    task.toggelDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}