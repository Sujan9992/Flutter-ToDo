import 'package:flutter/foundation.dart';
import 'package:todo/model/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: 'Task-1'),
    Task(name: 'Task-2'),
  ];

  UnmodifiableListView<Task> get task => UnmodifiableListView(_task);

  int get taskCount => _task.length;

  void addTask(String taskTitle) {
    final tasks = Task(name: taskTitle);
    _task.add(tasks);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }
}
