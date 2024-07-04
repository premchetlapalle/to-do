import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_list_provider.dart';

class TaskInput extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(hintText: 'Enter Your task...'),
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                Provider.of<TaskListProvider>(context, listen: false)
                    .addTask(_controller.text);
                _controller.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}
