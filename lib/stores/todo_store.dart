import 'package:flutter_todo_example/models/todo.dart';
import 'package:mobx/mobx.dart';
part 'todo_store.g.dart';

class TodoStore = _TodoStoreBase with _$TodoStore;

abstract class _TodoStoreBase with Store {
  @observable
  ObservableList<Todo> todos = ObservableList.of([]);

  @computed
  List<Todo> get checkedTodos => todos.where((e) => e.checked);

  @computed
  List<Todo> get uncheckedTodos => todos.where((e) => !e.checked);

  @action
  void addTodo(Todo value) {
    // if adding to the end of the list, [todos.add(value)] is more suitable
    todos.insert(0, value);
  }

  @action
  void deleteChecked() {
    todos.removeWhere((e) => e.checked);
  }
}
