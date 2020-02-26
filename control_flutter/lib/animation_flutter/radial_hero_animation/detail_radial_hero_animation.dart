import 'package:control_flutter/animation_flutter/linear_hero_animation/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class DetailsRadialHeroAnimation extends StatelessWidget {
  final String languagePath;
  final String languageTag;
  DetailsRadialHeroAnimation(this.languagePath, this.languageTag);

  @override
  Widget build(BuildContext context) {
    pop() {
      Navigator.of(context).pop();
    }

    timeDilation = 5;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Hero Animation'),
        ),
        body: Center(
          child: Util.buildHeroRadialDestination(
              languagePath, languageTag, width, height, pop),
        ));
  }
}
