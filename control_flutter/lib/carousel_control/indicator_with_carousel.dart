import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'common_carousel.dart';

class IndicatorWithCarousel extends StatefulWidget {
  @override
  _IndicatorWithCarouselState createState() => _IndicatorWithCarouselState();
}

class _IndicatorWithCarouselState extends State<IndicatorWithCarousel> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: childCarousel,
        autoPlay: false,
        enlargeCenterPage: true,
        aspectRatio: 2.0,
        onPageChanged: (index) {
          setState(() {
            _current = index;
            print('position of $_current');
          });
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: map<Widget>(
          imagenames,
          (index, url) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4)),
            );
          },
        ),
      ),
    ]);
  }
}
