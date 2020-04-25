import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  TaskTile({this.isChecked,this.taskTile,this.checkboxCallback,this.longPressCallback});

  final bool isChecked;
  final String taskTile;
  final Function checkboxCallback;
  final Function longPressCallback;



  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTile,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}


