import 'package:flutter/material.dart';
const List<Color> colorList= [
Colors.blue,
Colors.teal,
Colors.green,
Colors.red,
Colors.purple,
Colors.deepPurple,
Colors.orange,
Colors.pink,  
Colors.pinkAccent

];

class AppTheme{
  int selectedColor;

  //AppTheme({ 
  //  this.selectedColor = 0
  //}):assert(selectedColor >=0 && selectedColor <= colorList.length);


   AppTheme({ 
    this.selectedColor = 0
  }):assert(selectedColor >= 0 ,'Selected color must be equal or greater than 0'),
  assert(selectedColor <= colorList.length - 1, 'Selected color must be equal or less than ${colorList.length -1}');


  ThemeData theme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    )
  );


}