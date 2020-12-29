import 'package:flutter/material.dart';
import 'package:todoapp/view/components/TaskComponent.dart';

class OnGoingTask extends StatefulWidget {
  OnGoingTask({Key key}) : super(key: key);

  @override
  _OnGoingTaskState createState() => _OnGoingTaskState();
}

class _OnGoingTaskState extends State<OnGoingTask> {
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
