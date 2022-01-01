import 'package:bmicalc/constants.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  customButton(this.iconz);
  final IconData iconz;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          iconz,
          color: textColor,
          size: 20.0,
        ),
      ),
      color: appBarColor,
    ));
  }
}
