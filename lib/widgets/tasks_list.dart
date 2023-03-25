import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task.dart';
import 'package:todo/widgets/tasks_tile.dart';
import 'package:todo/models/task_data.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskvalue, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTile(
                taskTitle: taskvalue.tasks[index].name,
                isChecked: taskvalue.tasks[index].isDone,
                checkBoxCallBack: (checkBoxState) {
                  // setState(() {
                  //   Provider.of(context).tasks[index].toogleDone();
                  // });
                });
          },
          itemCount: Provider.of<TaskData>(context).count,
        );
      },
    );
  }
}
