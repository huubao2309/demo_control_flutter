import 'package:flutter/material.dart';
import 'model_page.dart';

class BottomNavigationBarWidgets extends StatelessWidget {
  final String language;
  BottomNavigationBarWidgets({@required this.language});
  static int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigate Bar'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(language),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lime[900],
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            title: Text(ModelPage.FLUTTER),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text(ModelPage.GOLANG),
            icon: Icon(Icons.phone),
          ),
          BottomNavigationBarItem(
            title: Text(ModelPage.POSTGRES),
            icon: Icon(Icons.email),
          ),
        ],
        onTap: (value) {
          String _artist = ModelPage.menuItems[value];
          _currentIndex = value;
          changeRoute(context, _artist);
        },
      ),
    );
  }

  void changeRoute(BuildContext context, String menuItem) {
    String image;
    switch (menuItem) {
      case ModelPage.FLUTTER:
        {
          image = ModelPage.IMG_FLUTTER;
          break;
        }
      case ModelPage.GOLANG:
        {
          image = ModelPage.IMG_GOLANG;
          break;
        }
      case ModelPage.POSTGRES:
        {
          image = ModelPage.IMG_POSTGRES;
          break;
        }
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BottomNavigationBarWidgets(
          language: image,
        ),
      ),
    );
  }
}
