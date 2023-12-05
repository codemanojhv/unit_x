import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:unit_x/home.dart';
import 'package:unit_x/settings.dart';

class MyClass extends StatefulWidget {
  const MyClass({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  int _selectedIndex = 0;

  final _pages = const <Widget>[
    HOME(),
    SettingsPage(),
    HOME(),  
    SettingsPage(),
    // Add more pages here
  ]; 

  final _activeColors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.deepOrange,
    
  ];

  final _inactiveIcons = [
    LineIcons.home,
    LineIcons.heart,
    LineIcons.search,
    LineIcons.user,
    // Add more icons here
  ];

  final _activeIcons = [
     Icons.home,
     Icons.favorite,
     Icons.search,
     Icons.person,
    // Add more icons here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: _pages[_selectedIndex],
      ), 
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white12 ,
        haptic: true,
        hoverColor: Colors.grey,
        tabBorderRadius: 12,
        curve: Curves.easeOutExpo,
        duration: const Duration(milliseconds: 500),
        gap: 8,
        color: Colors.black87, 
        activeColor: _activeColors[_selectedIndex],
        iconSize: 24,
        tabBackgroundColor:_activeColors[_selectedIndex].withOpacity(0.1),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        tabs: [
          GButton(
            icon: _selectedIndex == 0 ? _activeIcons[0] : _inactiveIcons[0],
            text: 'Home', 
          ),
          GButton(
            icon: _selectedIndex == 1 ? _activeIcons[1] : _inactiveIcons[1],
            text: 'Likes',
          ),
          GButton(
            icon: _selectedIndex == 2 ? _activeIcons[2] : _inactiveIcons[2],
            text: 'Search',
          ),
          GButton(
            icon: _selectedIndex == 3 ? _activeIcons[3] : _inactiveIcons[3],
            text: 'Profile',
          )
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}