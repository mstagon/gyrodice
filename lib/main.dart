import 'package:flutter/material.dart';
import 'package:randomdice/rootscreen.dart';
import 'package:randomdice/const/color.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        sliderTheme: SliderThemeData(
          thumbColor: primaryColor,
          activeTickMarkColor: primaryColor,
          inactiveTickMarkColor: primaryColor.withOpacity(0.3)
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryColor,
          unselectedItemColor: secondaryColor,
          backgroundColor: backgroundColor,
        )
      ),
      home : Rootscreen(),
    )
  );
}