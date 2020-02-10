import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'common_carousel.dart';

class InfinityScrollCarousel extends StatefulWidget {
  @override
  _CustomCarouselState createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<InfinityScrollCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: childCarousel,
      scrollPhysics: BouncingScrollPhysics(),
      enableInfiniteScroll: true,
      autoPlay: false,
      enlargeCenterPage: false,
      viewportFraction: 0.9,
      aspectRatio: 2.0,
      onPageChanged: (index) {
        setState(() {
          print('Scroll Image $index');
        });
      },
    );
  }
}
