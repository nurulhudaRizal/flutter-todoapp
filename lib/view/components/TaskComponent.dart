import 'package:flutter/material.dart';

class TaskComponent extends StatelessWidget {
  const TaskComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Task",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5)),
            Text("Description Task"),
            Padding(padding: EdgeInsets.only(bottom: 5)),
            Text("Date Task"),
          ],
        ),
      )),
    );
  }
}
