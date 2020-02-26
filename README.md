# Widgets in Flutter
*Documents:* https://api.flutter.dev/flutter/widgets/widgets-library.html

## Menu Widgets:
### 1. [Container](https://github.com/huubao2309/demo_control_flutter#1-container-1)
### 2. [Text](https://github.com/huubao2309/demo_control_flutter#2-text-1)
### 3. [Row](https://github.com/huubao2309/demo_control_flutter#3-row-1)
### 4. [Column](https://github.com/huubao2309/demo_control_flutter#4-column-1)
### 5. [Load Image](https://github.com/huubao2309/demo_control_flutter#5-load-image-1)
### 6. [Raised Button](https://github.com/huubao2309/demo_control_flutter#6-raised-button-1)
### 7. [Alert Dialog](https://github.com/huubao2309/demo_control_flutter#7-alert-dialog-1)
### 8. [Text Field](https://github.com/huubao2309/demo_control_flutter#8-text-field-1)
### 9. [DropdownBox](https://github.com/huubao2309/demo_control_flutter#9-dropdownbox-1)
### 10. [ListView](https://github.com/huubao2309/demo_control_flutter#10-listview-1)
### 11. [Scaffold](https://github.com/huubao2309/demo_control_flutter#11-scaffold-1)
### 12. [Navigation Page in Flutter](https://github.com/huubao2309/demo_control_flutter#12-navigation-page-in-flutter-1)
### 13. [Gestures](https://github.com/huubao2309/demo_control_flutter#13-gesture)
### 14. [Padding and Margin](https://github.com/huubao2309/demo_control_flutter#14-padding-and-margin-1)
### 15. [Get Size of Screen](https://github.com/huubao2309/demo_control_flutter#15-get-size-of-screen-1)
### 16. [Animation](https://github.com/huubao2309/demo_control_flutter#16-animation-1)
### 17. [Theme And Color](https://github.com/huubao2309/demo_control_flutter#17-theme-and-color-1)
### 18. [BoxDecoration](https://github.com/huubao2309/demo_control_flutter#18-boxdecoration-1)
### 19. [Flex](https://github.com/huubao2309/demo_control_flutter/blob/master/README.md#19-flex-1)
### 20. [Stack](https://github.com/huubao2309/demo_control_flutter/blob/master/README.md#20-stack-1)
### 21. [GridView](https://github.com/huubao2309/demo_control_flutter/blob/master/README.md#21-gridview-1)
### 22. [BottomNavigationBar](https://github.com/huubao2309/demo_control_flutter/blob/master/README.md#22-bottomnavigationbar-1)
### 23. [TabBar](https://github.com/huubao2309/demo_control_flutter/blob/master/README.md#23-tabbar-1)
### 24. [Linear Hero Animation](https://github.com/huubao2309/demo_control_flutter/blob/master/README.md#24-linear-hero-animation-1)
### 25. [Radial Hero Animation](https://github.com/huubao2309/demo_control_flutter/blob/master/README.md#25-radial-hero-animation-1)

==================================================


## 1. [Container](https://api.flutter.dev/flutter/widgets/Container-class.html)

[Source](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/container_widgets.dart)

* **Default Container**:

![Default_Container_Image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/container/default_container.png)
![Default_Container_Code](https://github.com/huubao2309/demo_control_flutter/blob/master/images/container/deault_code_container.png)


* Use **Aligment**:

![Use_Aligment_Image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/container/use_aligment_image.png)
![Use_Aligment_Code](https://github.com/huubao2309/demo_control_flutter/blob/master/images/container/use_aligment_container.png)


* With Properties:

![Use_Aligment_property](https://github.com/huubao2309/demo_control_flutter/blob/master/images/container/use_alignment_property.png)


* Use **Width** and **Height**:

![Use_Width_Image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/container/use_width_height_image.png)
![Use_Width_Code](https://github.com/huubao2309/demo_control_flutter/blob/master/images/container/use_width_height_container_code.png)


* Use **EdgeInserts**:

![Use_Width_Image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/container/use_EdgeInserts_image.png)
![Use_Width_Code](https://github.com/huubao2309/demo_control_flutter/blob/master/images/container/use_EdgeInserts_code.png)

* Use **EdgeInserts.symmetric()**:

```dart
     margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 30.0),
```

![symmetric](https://github.com/huubao2309/demo_control_flutter/blob/master/images/container/edgeinsert_symmetric.png)

* Use **LinearGradient**:

[Source LinearGradient](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/container_widgets.dart)

```dart
     child: Container(
        margin: EdgeInsets.all(15),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
            color: Colors.orange,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.purple[100], Colors.purple[500]]),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
      ),
```

![Use_Width_Image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/container/use_linear_gradient.png)


## 2. [Text](https://api.flutter.dev/flutter/widgets/Text-class.html)

[Source](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/text_widgets.dart)

* Use **Text Style**:

```dart
        child: Text(
          'Container',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            decoration: TextDecoration.underline,
          ),
        ),
```

![Text Style](https://github.com/huubao2309/demo_control_flutter/blob/master/images/text/normal_text.png)

* Add **Font**:

![Diagram](https://github.com/huubao2309/demo_control_flutter/blob/master/images/text/using_font_text.png)

1. **Download Font**:
        
    Download at: [Google Fonts](https://fonts.google.com/)
        
2. **Import Font at `pubspec.yaml`**:
        
![Add Font](https://github.com/huubao2309/demo_control_flutter/blob/master/images/text/add_font_folder.png)
        
3. **Not Use Font**:
        
```dart
        child: Text(
          'Not Use Font DancingScript',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            decoration: TextDecoration.underline,
          ),
        ),
```
        
![Not use Font](https://github.com/huubao2309/demo_control_flutter/blob/master/images/text/not_use_font.png)
        
4. **Use Font**:
        
```dart
               child: Text(
                  'Not Use Font DancingScript',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                    fontFamily: 'DancingScript',
                    fontWeight: FontWeight.w700,
                  ),
                ),
```
        
![use Font](https://github.com/huubao2309/demo_control_flutter/blob/master/images/text/using_font.png)
        
## 3. [Row](https://api.flutter.dev/flutter/widgets/Row-class.html)

![Row_Image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/row/row.png)

[Source](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/row_widgets.dart)

```dart
child: Row(
            children: <Widget>[
              Text(
                'Row 1',
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
              Text(
                'Row 2',
                style: TextStyle(color: Colors.green, fontSize: 40),
              ),
            ],
          )
```

![Result_Row_Image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/row/row_image.png)

* Use [**Aligment**](https://api.flutter.dev/flutter/rendering/MainAxisAlignment-class.html):

[Source Code](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/row_aligment.dart)

```dart
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Horizontal
          crossAxisAlignment: CrossAxisAlignment.end, // Vertical
          children: ...,
        ),
```

![Result_Row_Aligment](https://github.com/huubao2309/demo_control_flutter/blob/master/images/row/aligment_row.png)

* Or Use other [**Aligment**](https://api.flutter.dev/flutter/rendering/MainAxisAlignment-class.html) properties:

```dart
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
```

![Result_Row_Aligment_Other](https://github.com/huubao2309/demo_control_flutter/blob/master/images/row/spcaceEvenly_row.png)

* Use [`direction`](https://api.flutter.dev/flutter/painting/AxisDirection-class.html) properties:

```dart
          verticalDirection: VerticalDirection.up,
          textDirection: TextDirection.rtl,
```

![Result_Row_Direction](https://github.com/huubao2309/demo_control_flutter/blob/master/images/row/row_direction.png)


## 4. [Column](https://api.flutter.dev/flutter/widgets/Column-class.html)

![Column_Image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/column/column.png)

[Source](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/column_widgets.dart)


```dart
          child: Column(
            children: <Widget>[
              Text(
                'Column 1',
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
              Text(
                'Column 2',
                style: TextStyle(color: Colors.green, fontSize: 40),
              ),
            ],
          )
```

![Result_Column_Image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/column/column_image.png)

* Use [**Aligment**](https://api.flutter.dev/flutter/rendering/MainAxisAlignment-class.html):

[Source Code](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/column_aligment.dart)

```dart
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Horizontal
          crossAxisAlignment: CrossAxisAlignment.end, // Vertical
          children: ...,
        ),
```

![Result_Column_Aligment](https://github.com/huubao2309/demo_control_flutter/blob/master/images/column/aligment_column.png)

* Or Use other [**Aligment**](https://api.flutter.dev/flutter/rendering/MainAxisAlignment-class.html) properties:

```dart
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
```

![Result_Column_Aligment_Other](https://github.com/huubao2309/demo_control_flutter/blob/master/images/column/column_spaceAround.png)

* Use [`direction`](https://api.flutter.dev/flutter/painting/AxisDirection-class.html) properties:

```dart
          verticalDirection: VerticalDirection.up,
          textDirection: TextDirection.rtl,
```

![Result_Column_Direction](https://github.com/huubao2309/demo_control_flutter/blob/master/images/column/direction_column.png)

## 5. [Load Image](https://api.flutter.dev/flutter/widgets/Image-class.html)

[Source Code](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/image_widgets.dart)

* - **Source contain image**: File, Assets, Network, Provider, Memory, ...
* - **Format**: jpg, png, gif()animated), bmp, webP(animated), WBmp, ...

* Add Image and change `pubspec.yaml` file:

![pubspec.yaml](https://github.com/huubao2309/demo_control_flutter/blob/master/images/images/image.png)

* Code for load Image:

```dart
    AssetImage imageAsset = AssetImage('images/flutter.jpeg');
    return Container(
      child: Image(
        image: imageAsset,
        width: 300.0,
        height: 300.0,
      ),
    );
```

* Result load image:

![result load image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/images/load_image.png)

* Load Flutter Logo + [BoxDecoration](https://github.com/huubao2309/demo_control_flutter#18-boxdecoration-1):

[Source code](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/boxdecoration_flutter_logo.dart)

```dart
     return Container(
           margin: EdgeInsets.all(50.0),
           width: 300.0,
           height: 300.0,
           child: FlutterLogo(),
           decoration: BoxDecoration(
             color: Colors.orange,
             gradient: LinearGradient(
               colors: [Colors.pink[50], Colors.pink[500]],
             ),
             shape: BoxShape.rectangle,
             borderRadius: BorderRadius.all(
               Radius.circular(50.0),
             ),
           ),
         );
```

![result load logo_flutter](https://github.com/huubao2309/demo_control_flutter/blob/master/images/images/image_flutter_logo.png)

* Load Image Network + [BoxDecoration](https://github.com/huubao2309/demo_control_flutter#18-boxdecoration-1):

[Source code](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/boxdecoration_image.dart)

```dart
     return Container(
           margin: EdgeInsets.all(50.0),
           width: 300.0,
           height: 300.0,
           decoration: BoxDecoration(
             color: Colors.orange,
             gradient: LinearGradient(
               colors: [Colors.pink[50], Colors.pink[500]],
             ),
             image: DecorationImage(
               image: NetworkImage(
                   'https://academind.com/static/82471063091d8dd5c25baba64914d893/c1b63/flutter.png'),
             ),
             shape: BoxShape.rectangle,
             borderRadius: BorderRadius.all(
               Radius.circular(50.0),
             ),
           ),
         );
```

![result load image_network](https://github.com/huubao2309/demo_control_flutter/blob/master/images/images/network_image.png)

* **Note**: Load Image with [BoxDecoration](https://github.com/huubao2309/demo_control_flutter#18-boxdecoration-1) should use `.png`.

* Use `fit` properties:

```dart
       image: DecorationImage(
          image: NetworkImage(
              'https://academind.com/static/82471063091d8dd5c25baba64914d893/c1b63/flutter.png'),
          fit: BoxFit.fill,
        ),
```

![use fit property](https://github.com/huubao2309/demo_control_flutter/blob/master/images/images/use_fit_image.png)


## 6. [Raised Button](https://api.flutter.dev/flutter/material/RaisedButton-class.html)

[Source Raised Button](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/raised_button_widgets.dart)

* Use **Raised Button**:

```dart
        child: RaisedButton(
          onPressed: () {
            print('Test Button');
          },
          child: Text(
            'Click Button',
            style: TextStyle(color: Colors.black),
          ),
          color: Colors.yellow,
          elevation: 4.0,
        ),
```

* Result use **Raised Button**:

![Result Button](https://github.com/huubao2309/demo_control_flutter/blob/master/images/raised_button/result_button.png)

## 7. [Alert Dialog](https://api.flutter.dev/flutter/material/AlertDialog-class.html)

[Source Code Alert Dialog](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/alert_dialog_widgets.dart)

* Use **Alert Dialog**:

```dart
 void showAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Alert', style: TextStyle(color: Colors.red)),
      content: Text('You clicked button', style: TextStyle(color: Colors.blue)),
      actions: <Widget>[
        FlatButton(
          child: Text('OK', style: TextStyle(color: Colors.black)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
    showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
```

* Result use **Alert Dialog**:

![Alert Dialog 1](https://github.com/huubao2309/demo_control_flutter/blob/master/images/alert_dialog/image_dialog_1.png)
![Alert Dialog 2](https://github.com/huubao2309/demo_control_flutter/blob/master/images/alert_dialog/image_dialog_2.png)


## 8. [Text Field](https://api.flutter.dev/flutter/material/TextField-class.html)

[Source Code Text Field](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_stateful_normal/textfield_widgets.dart)

* Use **Text Field**:

```dart
          TextField(
            decoration: InputDecoration(
              hintText: 'Input Text...',
              labelText: 'Name',
              labelStyle: TextStyle(color: Colors.green),
              hintStyle: TextStyle(color: Colors.red),
              icon: Icon(
                Icons.people,
                color: Colors.blue,
              ),
            ),
            onChanged: (String string) {
              setState(() {
                name = string;
              });
            },
          ),
```

* Result use **Text Field**:

![Text Field 1](https://github.com/huubao2309/demo_control_flutter/blob/master/images/text_field/textfield_resul1.png)
![Text Field 2](https://github.com/huubao2309/demo_control_flutter/blob/master/images/text_field/textfield_resul2.png)


## 9. [DropdownBox](https://api.flutter.dev/flutter/material/DropdownButton-class.html)

[Source Code DropdownBox](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_stateful_normal/dropdown_button_widgets.dart)

* Use **DropdownBox**:

```dart
          final _children = ['Naruto', 'Luffy', 'Songoku', 'Mabu'];
          String _child = 'Luffy';
          ....
```

```dart
          DropdownButton<String>(
            items: _children.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: _child, // init dropdown boxs
            onChanged: (String value) {
              setState(() {
                this._child = value;
                name = value;
              });
            },
          ),
```

* Result use **DropdownBox**:

![DropdownBox 1](https://github.com/huubao2309/demo_control_flutter/blob/master/images/dropdownbox/init_dropdownbox.png)
![DropdownBox 2](https://github.com/huubao2309/demo_control_flutter/blob/master/images/dropdownbox/select_dropdownbox.png)
![DropdownBox 3](https://github.com/huubao2309/demo_control_flutter/blob/master/images/dropdownbox/result_dropdownbox.png)


## 10. [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html)

[Source Code ListView](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_stateful_normal/listview_widgets.dart)

* Use **ListView**:

```dart
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        // Row
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: getColor(position),
              child: Text(this.people[position].age.toString()),
            ),
            title: Text(this.people[position].name),
            subtitle: Text(this.people[position].job),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print('Tap on: $position');
            },
          ),
        );
      },
    );
```

* Result use **ListView**:

![ListView_Image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/list_view/listview_result.png)


## 11. [Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html)

[Source Code Scaffold](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/scaffold_control_widgets.dart)

* Use **Scaffold**:

```dart
        class UseScaffold extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return MaterialApp(
              theme: ThemeData(
                  brightness: Brightness.dark,
                  primaryColor: Color(0xff512DA8), // AppBar color
                  accentColor: Color(0xff03A9F4), // Floating button
                  textTheme: TextTheme(
                      body1: TextStyle(fontSize: 30, fontStyle: FontStyle.italic))),
              home: Scaffold(
                appBar: AppBar(
                  title: Text('Binding with Flutter'),
                  actions: <Widget>[
                    IconButton(
                      child: Icon(Icons.add),
                      ...
                    ),
                    IconButton(
                      child: Icon(Icons.add),
                      ...
                  ],
                ),
                body: Center(
                  child: Text(
                    "Use Scaffold!",
                    style: TextStyle(fontSize: 24, color: Colors.blueAccent),
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  child: Icon(Icons.add),
                  ...
                ),
                persistentFooterButtons: <Widget>[
                  IconButton(
                    child: Icon(Icons.add),
                    ...
                  ),
                  IconButton(
                    child: Icon(Icons.add),
                    ...
                  ),
                  IconButton(
                    child: Icon(Icons.add),
                    ...
                  ),
                ],
              ),
            );
          }
        }

```

* Result use **Scaffold**:

![Scaffold_Image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/scaffold/use_scaffold.png)

## 12. [Navigation Page in Flutter](https://flutter.dev/docs/cookbook/navigation/navigation-basics)

[Source Code Navigation Page in Flutter](https://github.com/huubao2309/demo_control_flutter/tree/master/control_flutter/lib/navigation_flutter)

* Use **Navigation Page**:

=> At Page [**ListView**](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/navigation_flutter/navigation_listview_widgets.dart):

```dart
             onTap: () async {
              var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailNavigationListview(this.people[position])));
               ...
```

=> At Page [**DetailNavigationListview**](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/navigation_flutter/detail_navigation_widgets.dart):

```dart
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Detail ListView'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(
                  context, 'Pop Navigation'); // Send Object => Parent Page
            }),
      ),
      ...
```

=> Receive Object At Page [**ListView**](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/navigation_flutter/navigation_listview_widgets.dart):

```dart
            onTap: () async {
              var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailNavigationListview(this.people[position])));
               // Receive Object when backing to DetailNavigationListview
              if (result != null) {
                print('Result Navigation: $result');
              }
            },
      ...
```

* Result use **Navigation Page**:

![Navigation Page_Main](https://github.com/huubao2309/demo_control_flutter/blob/master/images/navigation_page/main_screen.png)
![Navigation Page_Detail](https://github.com/huubao2309/demo_control_flutter/blob/master/images/navigation_page/detail_scrren.png)

## 13. [Gesture](https://flutter.dev/docs/development/ui/advanced/gestures)

[Source Code Gesture](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/gestures_flutter/demo_gestures.dart)

* Use **Gesture**:

```dart
      body: GestureDetector(
        // Click
        onTap: () {
          ...
        },
        // Double Click
        onDoubleTap: () {
          ...
        },
        // Long Press
        onLongPress: () {
          ...
        },
        // Vertical Drag
        onVerticalDragUpdate: (DragUpdateDetails value) {
           ...
        },
        // Horizontal Drag
        onHorizontalDragUpdate: (DragUpdateDetails value) {
           ...
        },
        child: Stack(
          children: <Widget>[
            ...
          ],
        ),
      ),
```

* Result use **Gesture**:

![Gesture_image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/gestures/gestures_result.png)


## 14. [Padding and Margin](https://api.flutter.dev/flutter/widgets/Padding-class.html)

![Padding and Margin](https://github.com/huubao2309/demo_control_flutter/blob/master/images/margin_padding/margin_padding.png)

## 15. [Get Size of Screen](https://stackoverflow.com/questions/49664059/how-to-get-size-of-screen-in-flutter-app)

```dart
     width = MediaQuery.of(context).size.width
     height = MediaQuery.of(context).size.height 
```

## 16. [Animation](https://flutter.dev/docs/development/ui/animations)

[Source Code Animation](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/animation_flutter/animation_demo.dart)

* Use **Animation** for `Flutter`:

* Create an **AnimationController**:
```dart
   controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    );
```

* Create an **Animation**:
(Demo use [Curved Animation](https://flutter.dev/docs/development/ui/animations/tutorial#curvedanimation))
```dart
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    );
```

* Add a **Listener**:
```dart
    animation.addListener(() {
      setState(() {
        ...
      });
    });
```

* Start the **Animation**:
```dart
   controller.forward();
```

* Result use **Animation**:

![Animation_image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/animation/animation.gif)

## 17. [Theme And Color](https://flutter.dev/docs/cookbook/design/themes)

[Source demo Theme and Color](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/theme_and_colors.dart):

Reference: https://www.materialpalette.com/purple/deep-purple

* Use **Theme And Color**:

```dart
     return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xff009688), // Color Hexa (0xff......)
        accentColor: Colors.orange, // MaterialColor
        textTheme: TextTheme(
          body1: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: Scaffold()
      .....
```

* Result use **Theme And Color**:

![Theme And Color](https://github.com/huubao2309/demo_control_flutter/blob/master/images/theme_colors/themem_color.png)


## 18. [BoxDecoration](https://api.flutter.dev/flutter/painting/BoxDecoration-class.html)

[BoxDecoration](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/box_decoration_widgets.dart):

* Use **BoxDecoration**:

```dart
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(50.0),
        ),
      ),
      .....
```

* Result use **BoxDecoration**:

![BoxDecoration](https://github.com/huubao2309/demo_control_flutter/blob/master/images/box_decoration/box_decoration.png)


## 19. [Flex](https://api.flutter.dev/flutter/widgets/Flex-class.html)

[Flex_Source](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/flex_using_layout.dart):

* Use **Flex**:

```dart
      Expanded square = Expanded(
        flex: i,
        child: Container(),
      .....
```

* Result use **Flex**:

![Flex](https://github.com/huubao2309/demo_control_flutter/blob/master/images/flex_layout/result_flex_layout.png)
![Flex_layout](https://github.com/huubao2309/demo_control_flutter/blob/master/images/flex_layout/flex_layout.png)


## 20. [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html)

[Stack_Source](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/stack_layout.dart):

* Use **Stack**:

```dart
return Container(
      child: Stack(
        children: ...,
      ),
    );
      .....
```

* Result use **Stack**:

![Stack](https://github.com/huubao2309/demo_control_flutter/blob/master/images/stack_layout/stack_layout.png)


## 21. [GridView](https://flutter.dev/docs/cookbook/lists/grid-lists)

[GridView_Source](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/gridview_layout.dart):

* Use **GridView**:

```dart
     child: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 3, // 3 column
        children: createSquares(50),
        mainAxisSpacing: 5.0, // Spacing Row
        crossAxisSpacing: 5.0, // Spacing Column
        padding: EdgeInsets.all(5.0),
      ),
      .....
```

* Result use **GridView**:

![GridView](https://github.com/huubao2309/demo_control_flutter/blob/master/images/gridview_layout/grdview_layout.png)


## 22. [BottomNavigationBar](https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html)

[BottomNavigationBar_Source](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/bottom_navigation_bar/bottom_navigation_bar.dart):

* Use **BottomNavigationBar**:

```dart
    return Scaffold(
      appBar: AppBar(...),
      body: Container(
        ...
      ),
      bottomNavigationBar: BottomNavigationBar(
        // 3 - 5 items
        items: [
          BottomNavigationBarItem(
            title: ...,
            icon: ...,
          ),
          BottomNavigationBarItem(
            title: ...,
            icon: ...,
          ),
          BottomNavigationBarItem(
            title: ...,
            icon: ...,
          ),
        ],
        onTap: (value) {
          // Change Route Page
        },
      ),
    );
      .....
```

* Result use **BottomNavigationBar**:

![BottomNavigationBar_Main](https://github.com/huubao2309/demo_control_flutter/blob/master/images/bottom_navigation/bottom_navigation_main.png)
![BottomNavigationBar_Click](https://github.com/huubao2309/demo_control_flutter/blob/master/images/bottom_navigation/clic_icon_changeTab.png)
![BottomNavigationBar_Back](https://github.com/huubao2309/demo_control_flutter/blob/master/images/bottom_navigation/back_navigation.png)


## 23. [TabBar](https://api.flutter.dev/flutter/material/TabBar-class.html)

[TabBar_Source](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/tabbar_widget/tabbar_control.dart):

* Use **TabBar**:

     - TabBarController
     - TabBar
     - TabBarView

```dart
  return MaterialApp(
      title: 'Navigating art',
      theme: ThemeData(...),
      home: DefaultTabController(
        length: 3, // 3 items
        child: Scaffold(
          appBar: AppBar(
            title: ...,
            bottom: TabBar( // 3 tabs
              tabs: <Widget>[
                Tab(icon: Icon(Icons.home), text: ModelPage.FLUTTER),
                Tab(icon: Icon(Icons.phone), text: ModelPage.GOLANG),
                Tab(icon: Icon(Icons.mail), text: ModelPage.POSTGRES),
              ],
            ),
          ),
          body: TabBarView( // 3 children
            children: <Widget>[
              Container(
                ...
              ),
              Container(
                ...
              ),
              Container(
                ...
              ),
            ],
          ),
        ),
      ),
    );
      .....
```

* Result use **TabBar**:

![TabBar_main](https://github.com/huubao2309/demo_control_flutter/blob/master/images/tabbar/tabbar_main.png)
![TabBar_golang](https://github.com/huubao2309/demo_control_flutter/blob/master/images/tabbar/tabbar_golang.png)


## 24. [Linear Hero Animation](https://flutter.dev/docs/development/ui/animations/hero-animations)

[Hero Animation_Source](https://github.com/huubao2309/demo_control_flutter/tree/master/control_flutter/lib/animation_flutter/hero_animation):

* Use **Hero Animation**:

```dart
     return Hero( // Create a Hero Widget
           tag: tag, // Same String for Origin and destination
           child: Container( // Widget for transition
             ...
           ),
         );
      .....
```

* Result use **Hero Animation**:

![Hero Animation](https://github.com/huubao2309/demo_control_flutter/blob/master/images/hero_animation/linear_hero_animation.gif)


## 25. [Radial Hero Animation](https://flutter.dev/docs/development/ui/animations/hero-animations#radial-hero-animations)

[Radial Hero Animation_Source](https://github.com/huubao2309/demo_control_flutter/tree/master/control_flutter/lib/animation_flutter/linear_hero_animation):

     - ClipOval and ClipRect
     - Tween
     - CreateRectTween

* Use **ClipOval**:

```dart
    return ClipOval(
      child: Center(
        child: Container(
          width: maxRadius,
          height: maxRadius,
          child: ClipRect(
            child: child,
          ),
        ),
      ),
    );
      .....
```

* Use **Radial Hero Animation**:

```dart
     child: Hero(
        createRectTween: _createTween,
        tag: tag,
        child: Container(
          ...
          child: RadialTransition(
            maxRadius: maxWidth / 2,
            child: Container(
              ...
              ),
            ),
          ),
        ),
      ),
      onTap: pop,
      .....
```

* Result use **Radial Hero Animation**:

![Hero Animation](https://github.com/huubao2309/demo_control_flutter/blob/master/images/hero_animation/radial_hero_animation.gif)

