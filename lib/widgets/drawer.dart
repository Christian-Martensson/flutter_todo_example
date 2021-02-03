import 'package:flutter/material.dart';
import 'package:flutter_todo_example/views/preferences_view.dart';

import '../utilities.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MyDrawerHeader(),
            _preferencesTile(context),
          ],
        ),
      ),
    );
  }

  _preferencesTile(context) {
    return ListTile(
      leading: Icon(Icons.settings, color: Theme.of(context).iconTheme.color),
      title: Text("Preferences"),
      onTap: () {
        push(context, PreferencesView());
      },
    );
  }
}

class MyDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      child: DrawerHeader(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        margin: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              // child: Image.asset('./assets/images/logo.png'),
              child: Text(
                "My Todo App",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
