import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class TasksList extends StatefulWidget {

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(name: 'Buy milk', isDone: false),
    Task(name: 'Buy egg', isDone: false),
    Task(name: 'Buy shoes', isDone: true)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TaskTile(taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
      checkboxCallback: (checkboxState){
        setState(() {
          tasks[index].toggelDone();
        });}
      );
    },
      itemCount: tasks.length,
    );
  }
}