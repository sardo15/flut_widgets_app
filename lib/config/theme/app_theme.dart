import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.deepOrange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme{

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
    }): assert(selectedColor >=0, 'Selected color must be greater than cero'),
        assert(selectedColor < colorList.length, 'Selected color mut be equal or least than ${colorList.length -1}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false,
    )

  );



}