import 'package:flutter/material.dart';
import 'package:flutter_todo_example/utilities.dart';

class MyAlertDialog extends StatelessWidget {
  final String title;
  final List<Widget> actions;
  final List<Widget> children;
  final Widget belowChildren;

  final EdgeInsets contentPadding;
  final EdgeInsets titlePadding;
  final ScrollController scrollController;

  const MyAlertDialog({
    @required this.title,
    @required this.children,
    this.actions,
    this.contentPadding,
    this.titlePadding,
    this.belowChildren,
    this.formKey,
    this.scrollController,
  });
  final formKey;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: contentPadding ?? const EdgeInsets.fromLTRB(24, 8, 24, 0),
      titlePadding: titlePadding ?? EdgeInsets.fromLTRB(24, 20, 24, 4),
      insetPadding: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      title: Container(
        height: 24,
        width: 300,
        child: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            title,
          ),
        ),
      ),
      content: Container(
        width: 240,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: SingleChildScrollView(
                controller: scrollController,
                child: Form(
                  key: formKey,
                  child: ListBody(
                    children: children,
                  ),
                ),
              ),
            ),
            belowChildren ?? Container(),
          ],
        ),
      ),
      actions: actions ??
          <Widget>[
            FlatButton(
              onPressed: () {
                pop(context);
              },
              child: Text(
                "Close",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
    );
  }
}
