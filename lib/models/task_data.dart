import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';


class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Bring milk'),
    Task(name: 'name is required')
  ];

  int get count{
    return tasks.length;
  }
}