import 'package:flutter/material.dart';

class bodywidget extends StatelessWidget {
  bodywidget(
    @required this.color,
    this.widget,
  );

  final Widget widget;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150.0,
        child: Center(child: widget),
        color: color,
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}
