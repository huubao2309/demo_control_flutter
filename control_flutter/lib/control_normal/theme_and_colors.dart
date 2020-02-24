import 'package:flutter/material.dart';

class ThemeAndColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xff009688), // Color Hexa (0xff......)
        accentColor: Colors.orange, // MaterialColor
        textTheme: TextTheme(
          body1: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test Theme And Color'),
        ),
        body: Center(
          child: Text('Theme And Color with body1'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
