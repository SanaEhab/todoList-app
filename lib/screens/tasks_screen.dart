import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:todoey_app/screens/add_task_screen.dart';
import 'package:todoey_app/widgets/tasks_list.dart';


class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>
              AddTaskScreen(),
          );
        },
        backgroundColor: Colors.lightBlue,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60.0, left:30.0,right: 30.0,bottom: 30.0),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(Icons.list,size:30.0,color: Colors.lightBlue,),
                ),
                 const SizedBox(
                  height: 10.0,
                ),
                 const Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700
                ),),
                 Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text("Add Your To Do List",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,))
              ],
            )
            ,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))
              ),
              child: TasksList(),
            ),
          ),
        ],
      )
    );
  }
}




