import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/taskData.dart';

// ignore: must_be_immutable
class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: Color(0xff676767),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.grey[600],
                    ),
                  ),
                  onPressed: () {
                    print(newTaskTitle);
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(newTaskTitle!);
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
