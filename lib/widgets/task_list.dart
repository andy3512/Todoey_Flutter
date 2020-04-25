import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemBuilder: (context, index){
            final task = Provider.of<TaskData>(context,listen: false).tasks[index];
            return TaskTile(
              taskTile: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                Provider.of<TaskData>(context,listen: false).updateTask(task);
              },
              longPressCallback: (){
                Provider.of<TaskData>(context,listen: false).deleteTask(task);
              },
            );
            },
          itemCount: Provider.of<TaskData>(context,listen: false).taskCount,
    );
  }
}

