import 'package:flutter/material.dart';

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
            title: const Text('Timetable'),
            onTap: () {
             
            },
          ),

           
        ],
      ),
    );
  }
}