import 'package:flutter/material.dart';
import 'OnGoingTask.dart';
import 'CompletedTask.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To Do App",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        bottom: TabBar(
          controller: controller,
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          tabs: [
            Tab(
              text: "On Going Task",
            ),
            Tab(
              text: "Completed Task",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [OnGoingTask(), CompletedTask()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _onAddButtonModalPress(context);
        },
        tooltip: 'Add new task!',
        child: Icon(Icons.add),
      ),
    );
  }
}

void _onAddButtonModalPress(context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Wrap(
            runSpacing: 15,
            children: [
              Center(
                  child: Text("Add New Task",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
              TextField(
                decoration: InputDecoration(
                    labelText: "Task Title",
                    hintText: "Task Title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                    labelText: "Task Description",
                    hintText: "Task Description",
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text("Date: 31/12/2020"),
                  trailing: Icon(Icons.date_range),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text("Time: 18:30"),
                  trailing: Icon(Icons.access_time_outlined),
                ),
              ),
              Center(child: RaisedButton(onPressed: () {}, child: Text("Add"))),
            ],
          ),
        );
      });
}
