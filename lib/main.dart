import 'package:flutter/material.dart';
import 'package:saya/account.dart';
import 'package:saya/history.dart';
import 'package:saya/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: History(),
    );
  }
}
