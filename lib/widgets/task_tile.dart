import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void onPressed(bool? checkboxState) {
    setState(() {
      isChecked = checkboxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task-1',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheck(isChecked, onPressed),
    );
  }
}

// ignore: must_be_immutable
class TaskCheck extends StatelessWidget {
  final bool checkboxState;
  final Function(bool?) toggleCheckboxState;
  TaskCheck(this.checkboxState, this.toggleCheckboxState);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.grey[850],
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
