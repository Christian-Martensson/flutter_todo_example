import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_todo_example/models/todo.dart';

class TodoTile extends StatelessWidget {
  final Todo todo;
  TodoTile(this.todo);

  var checkedStyle = TextStyle(
    color: Colors.grey,
    decoration: TextDecoration.lineThrough,
  );
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => CheckboxListTile(
        value: todo.checked,
        onChanged: todo.setChecked,
        title: Text(
          todo.title,
          style: todo.checked ? checkedStyle : null,
        ),
      ),
    );
  }
}
