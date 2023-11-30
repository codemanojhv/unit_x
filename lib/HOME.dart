import 'package:flutter/material.dart';

class MyClass extends StatefulWidget {
  const MyClass({Key? key}) : super(key: key);

  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 162, 226),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 200.0,
            backgroundColor: Colors.deepPurple[100],
            elevation: 10.0,
            primary: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'SliverAppBar',
                style: TextStyle(color: Colors.black, fontSize: 30.0),
              ),
              centerTitle: true,
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.qr_code),
                onPressed: () {
                  // Handle QR icon press
                },
              ),
            ],
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('Scrollable content'),
            ),
          ),
        ],
      ),
    );
  }
}