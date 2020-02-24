import 'package:flutter/material.dart';

class UseScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xff512DA8), // AppBar color
          accentColor: Color(0xff03A9F4), // Floating button
          textTheme: TextTheme(
              body1: TextStyle(fontSize: 30, fontStyle: FontStyle.italic))),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Binding with Flutter'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.camera),
              onPressed: () {
                print('Camera click');
              },
            ),
            IconButton(
                icon: Icon(Icons.chat),
                onPressed: () {
                  print('Chat click');
                })
          ],
        ),
        body: Center(
          child: Text(
            "Use Scaffold!",
            style: TextStyle(fontSize: 24, color: Colors.blueAccent),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('On press Floating Action Button');
          },
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
            icon: Icon(Icons.add_comment),
            onPressed: () {
              print('Click Comment button');
            },
          ),
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: () {
              print('Click Alarm button');
            },
          ),
          IconButton(
            icon: Icon(Icons.location_city),
            onPressed: () {
              print('Click Location button');
            },
          ),
        ],
      ),
    );
  }
}
