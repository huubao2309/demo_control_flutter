import 'package:control_flutter/animation_flutter/linear_hero_animation/util.dart';
import 'package:flutter/material.dart';

import 'detail_radial_hero_animation.dart';

class RadialHeroAnimationDemo extends StatefulWidget {
  @override
  _RadialHeroAnimationDemoPageState createState() =>
      _RadialHeroAnimationDemoPageState();
}

class _RadialHeroAnimationDemoPageState extends State<RadialHeroAnimationDemo>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final double maxRadius = MediaQuery.of(context).size.width;
    final double minRadius = 80.0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Radial Hero Animation Demo"),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        alignment: Alignment.topLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              child: Util.buildHeroRadialIcon(
                  Util.IMG_FLUTTER, Util.FLUTTER, minRadius, maxRadius),
              onTap: () {
                changeRoute(context, Util.FLUTTER);
              },
            ),
            GestureDetector(
              child: Util.buildHeroRadialIcon(
                  Util.IMG_GOLANG, Util.GOLANG, minRadius, maxRadius),
              onTap: () {
                changeRoute(context, Util.GOLANG);
              },
            ),
            GestureDetector(
              child: Util.buildHeroRadialIcon(
                  Util.POSTGRES, Util.POSTGRES, minRadius, maxRadius),
              onTap: () {
                changeRoute(context, Util.POSTGRES);
              },
            ),
          ],
        ),
      ),
    );
  }

  void changeRoute(BuildContext context, String language) {
    switch (language) {
      case Util.FLUTTER:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailsRadialHeroAnimation(Util.IMG_FLUTTER, Util.FLUTTER),
          ),
        );
        break;
      case Util.GOLANG:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailsRadialHeroAnimation(Util.IMG_GOLANG, Util.GOLANG),
          ),
        );
        break;
      case Util.POSTGRES:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailsRadialHeroAnimation(Util.IMG_POSTGRES, Util.POSTGRES),
          ),
        );
        break;
      default:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailsRadialHeroAnimation(Util.IMG_FLUTTER, Util.FLUTTER),
          ),
        );
        break;
    }
  }
}
