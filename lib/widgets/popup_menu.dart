import 'package:flutter/material.dart';

class MyPopupMenu extends StatelessWidget {
  final List<PopupOption> options;
  final Widget icon;
  final Widget child;

  MyPopupMenu({
    @required this.options,
    this.icon = const Icon(Icons.more_vert),
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: PopupMenuButton<PopupOption>(
        icon: child == null ? icon : null,
        child: child,
        onSelected: (PopupOption option) async {
          await option.onTap();
        },
        itemBuilder: (BuildContext context) => options
            .map((e) =>
                PopupMenuItem<PopupOption>(value: e, child: Text(e.name)))
            .toList(),
      ),
    );
  }
}

class PopupOption {
  String name;
  Function onTap;
  final bool requiresInternet;

  PopupOption(this.name, this.onTap, {this.requiresInternet = false});
}
