import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: const Text('Setting 1'),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {
                  // Handle switch toggling
                },
              ),
            ),
            ListTile(
              title: const Text('Setting 2'),
              trailing: Checkbox(
                value: true,
                onChanged: (bool? value) {
                  // Handle checkbox toggling
                },
              ),
            ),
            ListTile(
              title: const Text('Setting 3'),
              trailing: DropdownButton<String>(
                value: 'Option 1',
                onChanged: (String? newValue) {
                  // Handle new value
                },
                items: <String>['Option 1', 'Option 2', 'Option 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ).toList(),
      ),
    );
  }
}