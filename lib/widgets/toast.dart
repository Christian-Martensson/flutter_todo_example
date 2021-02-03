import 'package:flutter/material.dart';

class MyToast extends StatelessWidget {
  final String message;
  final bool makeSpaceForFAB = true;
  final Color indicatorColor;
  MyToast(this.message, {this.indicatorColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 56,
              margin: EdgeInsets.fromLTRB(16, 8, 8, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[800],
              ),
              child: Row(
                children: [
                  Container(
                    width: 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      color: indicatorColor ?? Colors.green[600],
                    ),
                  ),
                  SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      message ?? "",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 8),
                ],
              ),
            ),
          ),
          Container(width: 78)
        ],
      ),
    );
  }
}
