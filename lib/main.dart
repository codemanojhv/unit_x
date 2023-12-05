import 'package:flutter/material.dart';

import 'package:unit_x/navbar.dart';




void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This boolean tracks if the theme is dark or not
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home:  MyClass(),
    );
  }
}