import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_x/navbar.dart';

// ThemeNotifier class
class ThemeNotifier extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<ThemeNotifier>(context).themeMode,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.deepPurple[100],
        hintColor: Colors.deepPurple[200],
        colorScheme: ThemeData.light().colorScheme.copyWith(
        background: Colors.deepPurple[100],
  ),
        textTheme: const TextTheme
        (
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black54),
          bodySmall: TextStyle(color: Colors.black87)
        ),
  ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey[900],
        hintColor: Colors.blueGrey[700],
        colorScheme: ThemeData.dark().colorScheme.copyWith
          (
            background: Colors.blueGrey[900],
          ),
          textTheme: const TextTheme
        (
         bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white)
          
        ),
      ),
      home: const MyClass(),
    );
  }
}