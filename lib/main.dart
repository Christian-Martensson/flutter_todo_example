import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_todo_example/getit.dart';
import 'package:flutter_todo_example/theme.dart';
import 'package:flutter_todo_example/views/todo_view.dart';
import 'package:oktoast/oktoast.dart';

void main() async {
  // Exception thrown if not included, not quite sure why.
  WidgetsFlutterBinding.ensureInitialized();

  // We register the Singletons we want to be able to reach globally
  await registerGetIts();
  loadSharedPreferences();
  runApp(MyApp());
}

// Loads values that are persisted in SharedPreferences.
loadSharedPreferences() {
  prefStore.useDarkMode = sharedPrefs.getBool("useDarkMode") ?? true;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Needed to be able to call [toast()] anywhere in the app to show a "snackbar"
    // The alternative is to use [ScaffoldMessenger.of(context).showSnackBar()]
    // Which has multiple limitations and requires context.
    return OKToast(
      // A widget wrapped in an Observer will automatically rebuild itself if
      // any of the Observable values within this scope change
      // (in this case, if the useDarkMode bool has changed).
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
