import 'package:flutter/material.dart';
import 'package:todoapp/view/components/TaskComponent.dart';

class CompletedTask extends StatefulWidget {
  CompletedTask({Key key}) : super(key: key);

  @override
  _CompletedTaskState createState() => _CompletedTaskState();
}

class _CompletedTaskState extends State<CompletedTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [TaskComponent()],
        ));
  }
}
