import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bmi_calculator/input_pages.dart';


void main() {
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(new MyApp()));
}

enum Gender {male, female, others}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      checkerboardOffscreenLayers: true,
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'SF Pro Display',
      ),
      home: InputPage(),
    );
  }
}