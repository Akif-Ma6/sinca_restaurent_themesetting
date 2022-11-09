import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 16, color: appBarElementsColor),
      headline2: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: Colors.grey[700],
      ),
    ),
    appBarTheme: AppBarTheme(backgroundColor: AppBarColor));
const AppBarColor = Colors.white;
const appBarElementsColor = Colors.blueAccent;
const cardIconColor = Colors.white;
const cardLabelStyle =
    TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
const allSalesCardClr = LinearGradient(
  colors: [
    Colors.deepOrange,
    Colors.deepOrangeAccent,
    Colors.orange,
    Colors.orangeAccent,
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const newOrderCardClr = LinearGradient(
  colors: [
    Colors.blue,
    Colors.lightBlueAccent,
    Colors.lightBlue,
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const unclosedBillsCardClr = LinearGradient(
  colors: [
    Color.fromARGB(255, 182, 30, 19),
    Color.fromARGB(255, 255, 77, 71),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
const tablesCardClr = LinearGradient(
  colors: [
    Colors.cyan,
    Color.fromARGB(255, 24, 236, 255),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
