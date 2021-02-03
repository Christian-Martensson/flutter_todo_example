import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_todo_example/stores/preferences_store.dart';
import 'package:flutter_todo_example/stores/todo_store.dart';
import 'package:get_it/get_it.dart';

import 'package:shared_preferences/shared_preferences.dart';

GetIt get getIt => GetIt.I;

TodoStore get todoStore => getIt<TodoStore>();
PreferencesStore get prefStore => getIt<PreferencesStore>();
SharedPreferences get sharedPrefs => getIt<SharedPreferences>();
FlutterSecureStorage get secureStorage => getIt<FlutterSecureStorage>();

registerGetIts() async {
  getIt
    ..registerSingleton<PreferencesStore>(PreferencesStore())
    ..registerSingleton<SharedPreferences>(
        await SharedPreferences.getInstance())
    ..registerSingleton<FlutterSecureStorage>(FlutterSecureStorage())
    ..registerSingleton<TodoStore>(TodoStore());
}
