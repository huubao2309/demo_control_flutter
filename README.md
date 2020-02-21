# Widgets in Flutter
*Documents:* https://api.flutter.dev/flutter/widgets/widgets-library.html

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



