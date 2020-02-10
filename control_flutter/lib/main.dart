import 'package:flutter/material.dart';

import 'carousel_control/indicator_with_carousel.dart';
import 'carousel_control/infinity_scroll_carousel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Control Flutter',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Control Flutter',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
        body: Container(
          child: TabBarView(
            children: [
              new Text("This is call Tab View"),
              new Text("This is chat Tab View"),
              new Text("This is notification Tab View"),
            ],
            controller: _tabController,
          ),
        ),
        bottomSheet: HonePageState(_tabController),
        // bottomSheet: TabBar(
        //   unselectedLabelColor: Colors.white,
        //   labelColor: Colors.amber,
        //   tabs: null,
        // ),
      ),
    );
  }
}

class HonePageState extends StatefulWidget {
  @override
  _HonePageStateState createState() => _HonePageStateState(this._tabController);
}

class _HonePageStateState extends State<HonePageState>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  _HonePageStateState(this._tabController);

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: Colors.yellow,
      labelColor: Colors.red,
      tabs: [
        new Tab(icon: new Icon(Icons.call)),
        new Tab(
          icon: new Icon(Icons.chat),
        ),
        new Tab(
          icon: new Icon(Icons.notifications),
        )
      ],
      controller: _tabController,
    );
  }
}
