import 'package:mobx/mobx.dart';
part 'preferences_store.g.dart';

class PreferencesStore = _PreferencesStoreBase with _$PreferencesStore;

abstract class _PreferencesStoreBase with Store {
  @observable
  bool useDarkMode;
  @action
  setDarkMode(bool value) => useDarkMode = value;
}
