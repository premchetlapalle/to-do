import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'dart:math';
import 'task_list_provider.dart';

class TaskList extends StatelessWidget {
  final List<Color> _colors = [
    Colors.greenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    var tasks = Provider.of<TaskListProvider>(context).tasks;
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        String formattedTime = DateFormat.jm().format(tasks[index].timestamp);
        Color cardColor = _colors[index % _colors.length];
        return Card(
          color: cardColor,
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: ListTile(
            title: Text(tasks[index].title),
            subtitle: Text('Added at: $formattedTime'),
            trailing: Checkbox(
              value: tasks[index].isCompleted,
              onChanged: (isChecked) {
                Provider.of<TaskListProvider>(context, listen: false)
                    .toggleTaskCompletion(index);
              },
            ),
          ),
        );
      },
    );
  }
}
