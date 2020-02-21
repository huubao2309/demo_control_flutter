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

```javascript
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
        
```javascript
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
        
```javascript
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
        

