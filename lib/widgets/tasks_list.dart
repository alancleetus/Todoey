import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function callback;

  const TasksList({Key key, @required this.tasks, @required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        taskText: tasks[index].text,
        isChecked: tasks[index].isDone,
        toggleCheckbox: (b) {
          //print('setting state $b');
          callback(index);
        },
      ),
      itemCount: tasks.length,
    );
  }
}
