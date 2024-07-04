import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapk/task_complete_button.dart';
import 'task_list_provider.dart';
import 'task_input.dart';
import 'task_list.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskListProvider(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.purpleAccent,
              title: Text(
                'To-Do List',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              )),
          body: Column(
            children: [
              TaskInput(),
              Expanded(child: TaskList()),
              ClearCompletedButton(),
            ],
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
