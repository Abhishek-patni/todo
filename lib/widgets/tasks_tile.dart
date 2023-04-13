import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  final VoidCallback onlongPress;

  const TasksTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallBack, required this.onlongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onlongPress,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.blueAccent,
        onChanged: (newValue){
          checkBoxCallBack(newValue);
        },
      ),
    );
  }
}
