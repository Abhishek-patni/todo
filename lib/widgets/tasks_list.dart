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
            final task = taskvalue.tasks[index];
            return TasksTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCallBack: (checkBoxState) {
                  taskvalue.updateTask(task);
                }, onlongPress: () {
                  taskvalue.deleteTask(task);
            },);
          },
          itemCount: Provider.of<TaskData>(context).count,
        );
      },
    );
  }
}
