import 'package:flutter/material.dart';

class MyClass {
  // Add an empty body to the class
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<int> _items = List<int>.generate(20, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // The title to display in the app bar
            title: Text('SliverAppBar'),

            // Whether the app bar should become visible as soon as the user scrolls towards the app bar
            floating: true,

            // Whether the app bar should remain visible at the start of the scroll view
            pinned: true,

            // The size of the app bar when it is fully expanded
            expandedHeight: 200.0,

            // The color of the app bar
            backgroundColor: Colors.blue,

            // The z-coordinate at which to place this app bar relative to its parent
            elevation: 10.0,

            // Whether this app bar is being displayed at the top of the screen
            primary: true,

            // The material's shape as well its shadow
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(00),
              ),
            ),

            // The widget that is displayed in the flexible space
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              centerTitle: true,
            ),
            
            // The widget to display in the center of the app bar
            centerTitle: true,

            // The widget to display in the leading position of the app bar, typically an icon button that returns to the previous screen
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),

            // The widgets to display after the [title] widget
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  key: Key('$index'),
                  title: Container(
                    height: 100.0,
                    color: Colors.blue[100 * (index % 9)],
                    child: Center(child: Text('Item ${_items[index]}')),
                  ),
                );
              },
              childCount: _items.length,
            ),
          ),
        ],
      ),
    );
  }
}