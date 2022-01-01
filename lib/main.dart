import 'package:bmicalc/appBody.dart';
import 'package:bmicalc/endScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => App_Body(),
      },
    ),
  );
}
