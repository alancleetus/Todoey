import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskTile extends StatelessWidget {
  final String taskText;
  final bool isChecked;
  final Function toggleCheckbox;

  const TaskTile({Key key, this.taskText, this.isChecked, this.toggleCheckbox})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskText,
        style: TextStyle(
          fontSize: 20.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
    );
  }
}

/*    /*lifting state example*/
class TaskTile extends StatefulWidget {
  final Task task;

  const TaskTile({Key key, this.task}) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool checkboxState = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      checkboxState = widget.task.isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.task.text,
        style: TextStyle(
          fontSize: 20.0,
          decoration: checkboxState ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        isChecked: checkboxState,
        callback: (bool b) {
          setState(() {
            checkboxState = b;
            widget.task.toggle();
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function callback;

  const TaskCheckBox({Key key, this.callback, this.isChecked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: callback,
    );
  }
}*/
