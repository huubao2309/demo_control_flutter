import 'package:control_flutter/bottom_navigation_bar/model_page.dart';
import 'package:control_flutter/tabbar_widget/tabbar_control.dart';
import 'package:flutter/material.dart';

import 'animation_flutter/animation_demo.dart';
import 'bottom_navigation_bar/bottom_navigation_bar.dart';
import 'carousel_control/indicator_with_carousel.dart';
import 'carousel_control/infinity_scroll_carousel.dart';
import 'control_normal/alert_dialog_widgets.dart';
import 'control_normal/box_decoration_widgets.dart';
import 'control_normal/boxdecoration_flutter_logo.dart';
import 'control_normal/boxdecoration_image.dart';
import 'control_normal/column_aligment.dart';
import 'control_normal/column_widgets.dart';
import 'control_normal/container_use_linearGradient.dart';
import 'control_normal/container_widgets.dart';
import 'control_normal/flex_using_layout.dart';
import 'control_normal/gridview_layout.dart';
import 'control_normal/image_widgets.dart';
import 'control_normal/raised_button_widgets.dart';
import 'control_normal/row_aligment.dart';
import 'control_normal/row_widgets.dart';
import 'control_normal/scaffold_control_widgets.dart';
import 'control_normal/stack_layout.dart';
import 'control_normal/text_widgets.dart';
import 'control_normal/theme_and_colors.dart';
import 'control_stateful_normal/textfield_widgets.dart';
import 'control_stateful_normal/dropdown_button_widgets.dart';
import 'control_stateful_normal/listview_widgets.dart';
import 'demo_fuel_cost/calc_trip.dart';
import 'gestures_flutter/demo_gestures.dart';
import 'navigation_flutter/navigation_listview_widgets.dart';

void main() => runApp(MyTabBarApp());

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
        body: GridViewWidgets(),
      ),
    );
  }
}

class MyBottomNavigationApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigating art',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: BottomNavigationBarWidgets(
        language: ModelPage.IMG_FLUTTER,
      ),
    );
  }
}
