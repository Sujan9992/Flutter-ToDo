import 'package:flutter/material.dart';
import 'package:todo/widgets/addTask.dart';
import 'package:todo/widgets/task_list.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/taskData.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FloatingActionButton(
          backgroundColor: Colors.grey[850],
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (context) => AddTask(),
          ),
          child: Icon(
            Icons.add,
            color: Colors.grey[300],
          ),
        ),
      ),
      backgroundColor: Colors.grey[850],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list_alt,
                    size: 35.0,
                    color: Colors.grey[850],
                  ),
                  radius: 35.0,
                  backgroundColor: Colors.grey[300],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'To Do Lists',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: TaskList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
