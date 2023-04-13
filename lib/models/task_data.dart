import 'dart:collection';

import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:todo/models/task.dart';
import 'package:collection/collection.dart';


class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Bring milk'),
    Task(name: 'name is required')
  ];

  int get count{
    return _tasks.length;
  }

  UnmodifiableListView <Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle)
  {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toogleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}