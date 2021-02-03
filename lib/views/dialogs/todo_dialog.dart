import 'package:flutter/material.dart';
import 'package:flutter_todo_example/models/todo.dart';
import 'package:flutter_todo_example/utilities.dart';

class TodoDialog extends StatelessWidget {
  String title;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Add todo"),
      content: Container(
        height: 60,
        child: Column(
          children: [
            TextField(
              autofocus: true,
              decoration: InputDecoration(labelText: "Title"),
              onChanged: (String value) => title = value,
            ),
          ],
        ),
      ),
      actions: [
        FlatButton(
          child: Text('Cancel', style: TextStyle(fontSize: 16)),
          onPressed: () {
            pop(context);
          },
        ),
        FlatButton(
          child: Text('Save', style: TextStyle(fontSize: 16)),
          onPressed: () {
            pop(context, Todo(title: title));
          },
        ),
      ],
    );
  }
}
