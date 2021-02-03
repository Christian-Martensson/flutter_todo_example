import 'package:mobx/mobx.dart';
part 'todo.g.dart';

class Todo = _TodoBase with _$Todo;

abstract class _TodoBase with Store {
  @observable
  String title;

  @observable
  bool checked = false;
  setChecked(bool value) => checked = value;

  _TodoBase({
    this.title,
  });
}
