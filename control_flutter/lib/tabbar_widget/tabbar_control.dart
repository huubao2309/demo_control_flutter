import 'package:control_flutter/bottom_navigation_bar/model_page.dart';
import 'package:flutter/material.dart';

class MyTabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigating art',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.home), text: ModelPage.FLUTTER),
                Tab(icon: Icon(Icons.phone), text: ModelPage.GOLANG),
                Tab(icon: Icon(Icons.mail), text: ModelPage.POSTGRES),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(ModelPage.IMG_FLUTTER),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(ModelPage.IMG_GOLANG),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(ModelPage.IMG_POSTGRES),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
