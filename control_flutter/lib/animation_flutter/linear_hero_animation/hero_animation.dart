import 'package:control_flutter/animation_flutter/linear_hero_animation/util.dart';
import 'package:flutter/material.dart';

import 'detail_hero_animation.dart';

class HeroAnimationDemo extends StatefulWidget {
  @override
  _HeroAnimationDemoPageState createState() => _HeroAnimationDemoPageState();
}

class _HeroAnimationDemoPageState extends State<HeroAnimationDemo>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation Demo"),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        alignment: Alignment.topLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              child: Util.buildHeroIcon(Util.IMG_FLUTTER, Util.FLUTTER),
              onTap: () {
                changeRoute(context, Util.FLUTTER);
              },
            ),
            GestureDetector(
              child: Util.buildHeroIcon(Util.IMG_GOLANG, Util.GOLANG),
              onTap: () {
                changeRoute(context, Util.GOLANG);
              },
            ),
            GestureDetector(
              child: Util.buildHeroIcon(Util.POSTGRES, Util.POSTGRES),
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
                DetailsHeroAnimation(Util.IMG_FLUTTER, Util.FLUTTER),
          ),
        );
        break;
      case Util.GOLANG:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailsHeroAnimation(Util.IMG_GOLANG, Util.GOLANG),
          ),
        );
        break;
      case Util.POSTGRES:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailsHeroAnimation(Util.IMG_POSTGRES, Util.POSTGRES),
          ),
        );
        break;
      default:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailsHeroAnimation(Util.IMG_FLUTTER, Util.FLUTTER),
          ),
        );
        break;
    }
  }
}
