import 'package:control_flutter/animation_flutter/radial_hero_animation/radial_transition.dart';
import 'package:flutter/material.dart';

class Util {
  static const FLUTTER = "flutter";
  static const GOLANG = "golang";
  static const POSTGRES = "postgres";

  static const IMG_FLUTTER =
      "https://academind.com/static/82471063091d8dd5c25baba64914d893/c1b63/flutter.png";
  static const IMG_GOLANG =
      "https://redislabs.com/wp-content/uploads/2018/03/golang-redis.jpg";
  static const IMG_POSTGRES =
      "https://sp.postgresqltutorial.com/wp-content/uploads/2012/08/What-is-PostgreSQL.png";

  static Widget buildHeroIcon(String path, String tag) {
    return Hero(
      tag: tag,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
            image: NetworkImage(path),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }

  static Widget buildHeroDestination(String path, String tag, double width) {
    return Hero(
      tag: tag,
      child: Container(
        width: width,
        child: Image.network(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  static Widget buildHeroRadialIcon(
      String path, String tag, double minRadius, double maxRadisus) {
    return Container(
      child: Hero(
        tag: tag,
        createRectTween: _createTween,
        child: Container(
          height: minRadius,
          width: minRadius,
          child: RadialTransition(
            maxRadius: maxRadisus,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                  image: NetworkImage(path),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static RectTween _createTween(Rect begin, Rect end) {
    return MaterialRectArcTween(begin: begin, end: end);
  }

  static Widget buildHeroRadialDestination(String path, String tag,
      double maxWidth, double maxHeight, VoidCallback pop) {
    return GestureDetector(
      child: Hero(
        createRectTween: _createTween,
        tag: tag,
        child: Container(
          height: maxHeight,
          width: maxWidth,
          child: RadialTransition(
            maxRadius: maxWidth / 2,
            child: Container(
              child: Image.network(
                path,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
      onTap: pop,
    );
  }
}
