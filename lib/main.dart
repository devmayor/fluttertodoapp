import 'package:flutter/material.dart';
import './pages/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Map<int, Color> color = {
    50: Color.fromRGBO(86, 135, 255, .1),
    100: Color.fromRGBO(86, 135, 255, .2),
    200: Color.fromRGBO(86, 135, 255, .3),
    300: Color.fromRGBO(86, 135, 255, .4),
    400: Color.fromRGBO(86, 135, 255, .5),
    500: Color.fromRGBO(86, 135, 255, .6),
    600: Color.fromRGBO(86, 135, 255, .7),
    700: Color.fromRGBO(86, 135, 255, .8),
    800: Color.fromRGBO(86, 135, 255, .9),
    900: Color.fromRGBO(86, 135, 255, 1),
  };

  @override
  Widget build(BuildContext context) {
    MaterialColor colorCustom = MaterialColor(0xFF5687FF, color);
    return MaterialApp(
      // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      home: HomePage(),
    );
  }
}


