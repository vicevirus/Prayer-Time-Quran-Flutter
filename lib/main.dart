import 'package:flutter/material.dart';


import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:waktusolatimprovised/components/routes.dart';



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    

    
    
    return new DynamicTheme(

      defaultBrightness: Brightness.dark,
      data: (brightness) => new ThemeData(
        primarySwatch: Colors.indigo,
        brightness: brightness,

      ),
      themedWidgetBuilder: (context, theme) {
        return new MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Muslim Kit',
          theme: theme,
          initialRoute: '/',
         onGenerateRoute: RouteGenerator.generateRoute,
        );
      }
    );
  }
}
