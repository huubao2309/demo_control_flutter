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
### 13. [Gestures](https://github.com/huubao2309/demo_control_flutter/blob/master/README.md#13-gesture-1)


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

## 5. [Load Image](https://api.flutter.dev/flutter/widgets/Image-class.html)

[Source Code](https://github.com/huubao2309/demo_control_flutter/blob/master/control_flutter/lib/control_normal/image_widgets.dart)

* - **Source contain image**: File, Assets, Network, Provider, Memory, ...
* - **Format**: jpg, png, gif()animated), bmp, webP(animated), WBmp, ...

* Add Image and change `pubspec.yaml` file:

![pubspec.yaml](https://github.com/huubao2309/demo_control_flutter/blob/master/images/images/image.png)

* Code for load Image:

```dart
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
              backgroundColor: Colors.red,
              child: Text('Index'),
            ),
            title: Text('Title ListView'),
            subtitle: Text('SubTitle ListView'),
            onTap: () {
              print('Tap on: $position');
            },
          ),
        );
      },
    );
```

* Result use **ListView**:

![ListView_Image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/list_view/listview_image.png)

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
        onTap: () {
          setState(() {
            numTaps++;
          });
        },
        onDoubleTap: () {
          setState(() {
            numDoubleTaps++;
          });
        },
        onLongPress: () {
          setState(() {
            numLongPress++;
          });
        },
        child: Stack(
          children: <Widget>[
            Positioned(
              left: (MediaQuery.of(context).size.width / 4),
              top: (MediaQuery.of(context).size.height / 4),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
```

* Result use **Gesture**:

![Gesture_image](https://github.com/huubao2309/demo_control_flutter/blob/master/images/gestures/gestures_result.png)




