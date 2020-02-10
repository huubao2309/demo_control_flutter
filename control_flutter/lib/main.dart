import 'package:flutter/material.dart';

import 'carousel_control/indicator_with_carousel.dart';
import 'carousel_control/infinity_scroll_carousel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
          child: IndicatorWithCarousel(),
        ),
      ),
    );
  }
}
