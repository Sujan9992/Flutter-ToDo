import 'package:flutter/material.dart';
import 'package:todo/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/taskData.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, child) => ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (BuildContext context, int index) {
            final task = taskData.task[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool? checkboxState) {
                taskData.updateTask(task);
              },
              onLongPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          }),
    );
  }
}
