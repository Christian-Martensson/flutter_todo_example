import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_todo_example/getit.dart';
import 'package:flutter_todo_example/models/todo.dart';
import 'package:flutter_todo_example/utilities.dart';
import 'package:flutter_todo_example/views/dialogs/todo_dialog.dart';
import 'package:flutter_todo_example/widgets/drawer.dart';
import 'package:flutter_todo_example/widgets/popup_menu.dart';
import 'package:flutter_todo_example/widgets/todo_tile.dart';

class TodoView extends StatelessWidget {
  final store = todoStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
        actions: [
          MyPopupMenu(
            options: [
              PopupOption("Delete checked", store.deleteChecked),
            ],
          )
        ],
      ),
      drawer: MyDrawer(),
      body: Observer(
        builder: (_) => ListView.builder(
          itemCount: store.todos.length,
          itemBuilder: (BuildContext context, int index) {
            var todo = store.todos[index];
            return TodoTile(todo);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          var res = await showD<Todo>(context, child: TodoDialog());
          if (res != null) todoStore.addTodo(res);
        },
      ),
    );
  }
}
