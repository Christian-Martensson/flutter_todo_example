import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_todo_example/getit.dart';
import 'package:flutter_todo_example/theme.dart';
import 'package:flutter_todo_example/views/todo_view.dart';
import 'package:oktoast/oktoast.dart';

void main() async {
  // Exception thrown if not included, not quite sure why.
  WidgetsFlutterBinding.ensureInitialized();

  // We register the objects we want to be able to reach globally
  await registerGetIts();
  loadSharedPreferences();
  runApp(MyApp());
}

loadSharedPreferences() {
  prefStore.useDarkMode = sharedPrefs.getBool("useDarkMode") ?? true;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: Observer(
        builder: (_) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: prefStore.useDarkMode ? darkThemeData : lightThemeData,
          home: TodoView(),
        ),
      ),
    );
  }
}
