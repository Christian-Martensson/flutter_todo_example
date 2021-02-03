// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoStore on _TodoStoreBase, Store {
  Computed<List<Todo>> _$checkedTodosComputed;

  @override
  List<Todo> get checkedTodos =>
      (_$checkedTodosComputed ??= Computed<List<Todo>>(() => super.checkedTodos,
              name: '_TodoStoreBase.checkedTodos'))
          .value;
  Computed<List<Todo>> _$uncheckedTodosComputed;

  @override
  List<Todo> get uncheckedTodos => (_$uncheckedTodosComputed ??=
          Computed<List<Todo>>(() => super.uncheckedTodos,
              name: '_TodoStoreBase.uncheckedTodos'))
      .value;

  final _$todosAtom = Atom(name: '_TodoStoreBase.todos');

  @override
  ObservableList<Todo> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<Todo> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$_TodoStoreBaseActionController =
      ActionController(name: '_TodoStoreBase');

  @override
  void addTodo(Todo value) {
    final _$actionInfo = _$_TodoStoreBaseActionController.startAction(
        name: '_TodoStoreBase.addTodo');
    try {
      return super.addTodo(value);
    } finally {
      _$_TodoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteChecked() {
    final _$actionInfo = _$_TodoStoreBaseActionController.startAction(
        name: '_TodoStoreBase.deleteChecked');
    try {
      return super.deleteChecked();
    } finally {
      _$_TodoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos},
checkedTodos: ${checkedTodos},
uncheckedTodos: ${uncheckedTodos}
    ''';
  }
}
