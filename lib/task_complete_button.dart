import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_list_provider.dart';

class ClearCompletedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Provider.of<TaskListProvider>(context, listen: false)
              .clearCompletedTasks();
        },
        child: Text('Clear Completed Task'),
      ),
    );
  }
}
