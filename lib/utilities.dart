import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_todo_example/widgets/toast.dart';
import 'package:oktoast/oktoast.dart';

Future<T> showD<T>(
  BuildContext context, {
  @required Widget child,
  bool barrierDismissible = false,
}) async {
  return await showDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (BuildContext context) {
      return child;
    },
  );
}

push(BuildContext context, Widget child) async {
  return await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => child,
    ),
  );
}

pop(BuildContext context, [dynamic res]) {
  if (Navigator.canPop(context)) Navigator.of(context).pop(res);
}

// to use toast, MaterialApp must be wrapped in OKToast(child: )
toast(String msg) {
  // todo: how do we handle bottompadding?
  // double bottomPadding =
  // GetIt.I<IronConnectLibPreferences>().bottomPaddingSafeArea - 16;
  // if (bottomPadding < 0) bottomPadding = 0;

  showToastWidget(
    Padding(
      padding: EdgeInsets.only(
          // because we can't (easily) use SafeArea here to avoid widgets appearing
          // outside of the screen, we use a custom solution
          // bottom: bottomPadding,
          ),
      child: MyToast(msg),
    ),
    position: const ToastPosition(align: Alignment.bottomCenter),
    duration: Duration(seconds: 3),
    dismissOtherToast: true,
  );
}

void hideKeyboard(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}

bool isTablet(context) =>
    MediaQuery.of(context).size.shortestSide < 600 ? false : true;

Future<bool> ping() async {
  try {
    final result = await InternetAddress.lookup('google.com')
        .timeout(Duration(seconds: 4), onTimeout: () {
      return null;
    });
    if (result != null &&
        result.isNotEmpty &&
        result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
  return false;
}
