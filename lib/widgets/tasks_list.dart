import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task_Data.dart';

import 'package:todoey_flutter/widgets/task_tile.dart';

import '../model/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyTask>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.countTask,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              delectTask: () {
                taskData.deleteTask(index);
              },
              name: task.name,
              isChecked: task.isDone!,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
            );
          });
    });
  }
}
