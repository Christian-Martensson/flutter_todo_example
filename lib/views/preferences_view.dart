import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_todo_example/getit.dart';

class PreferencesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preferences"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrefTitle("Theme"),
            SizedBox(height: 8),
            _darkThemeCheckbox(context),
          ],
        ),
      ),
    );
  }

  Widget _darkThemeCheckbox(context) {
    return Observer(
      builder: (_) => CheckboxListTile(
        title: Text("Use dark mode"),
        value: prefStore.useDarkMode,
        onChanged: prefStore.setDarkMode,
      ),
    );
  }
}

class PrefTitle extends StatelessWidget {
  final String title;
  PrefTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, left: 16),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
