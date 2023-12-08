import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_x/main.dart'; // Import your main.dart file

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final darkMode = (themeNotifier.themeMode == ThemeMode.dark);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: darkMode,
            onChanged: (bool value) {
              setState(() {
                themeNotifier.toggleTheme();
              });
            },
          ),
          // Add more settings here
        ],
      ),
    );
  }
}