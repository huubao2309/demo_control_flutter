import 'package:control_flutter/animation_flutter/hero_animation/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class DetailsHeroAnimation extends StatelessWidget {
  final String languagePath;
  final String languageTag;
  DetailsHeroAnimation(this.languagePath, this.languageTag);

  @override
  Widget build(BuildContext context) {
    timeDilation = 10;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: Center(
        child: Util.buildHeroDestination(languagePath, languageTag, width),
      ),
    );
  }
}
