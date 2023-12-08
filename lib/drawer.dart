import 'package:flutter/material.dart';
import 'package:unit_x/settings.dart';

class MyDrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu'),
          ),
          ListTile(
            title: const Text('Schedule'),
            onTap: () {
            
            },
          ),
          ListTile(
            title: const Text('settings'),
            onTap: () {
              Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingsPage()),
          );
        },
      ),
 
           
        ],
      ),
    );
  }
}