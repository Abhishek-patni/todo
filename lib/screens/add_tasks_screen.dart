import 'package:flutter/material.dart';
import 'package:todo/widgets/tasks_list.dart';

class Add_tasks extends StatelessWidget {

  final Function addTaskCallBack;
  const Add_tasks(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    TextField filed_value;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Tasks',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueAccent, fontSize: 30.0),
            ),
            filed_value=TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              onChanged: (newValue)
              {
                newTaskTitle =newValue;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  //task to be shown at the list
                  addTaskCallBack(newTaskTitle);
                },
                child: const Text('ADD'))
          ],
        ),
      ),
    );
  }
}
dynamic sendData;
