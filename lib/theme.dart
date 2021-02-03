import 'package:flutter/material.dart';

// var accentColor = MaterialColor(0xFFe4a025, swatch(Color(0xFFe4a025)));
// var industrialGrey = MaterialColor(0xFF808488, swatch(Color(0xFF808488)));
// var optionalGrey = MaterialColor(0xFF424242, swatch(Color(0xFF424242)));
var primaryBlack = MaterialColor(0xFF000000, swatch(Color(0xFF000000)));
var accentColor = Colors.teal;
swatch(Color color) {
  int red = color.red;
  int green = color.green;
  int blue = color.blue;

  return {
    50: Color.fromRGBO(red, green, blue, .1),
    100: Color.fromRGBO(red, green, blue, .2),
    200: Color.fromRGBO(red, green, blue, .3),
    300: Color.fromRGBO(red, green, blue, .4),
    400: Color.fromRGBO(red, green, blue, .5),
    500: Color.fromRGBO(red, green, blue, .6),
    600: Color.fromRGBO(red, green, blue, .7),
    700: Color.fromRGBO(red, green, blue, .8),
    800: Color.fromRGBO(red, green, blue, .9),
    900: Color.fromRGBO(red, green, blue, 1),
  };
}

ThemeData lightThemeData = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey[900],
    primary: Colors.grey[800],
  ),
  fontFamily: 'Montserrat',
  brightness: Brightness.light,
  primarySwatch: primaryBlack,
  primaryColor: Colors.grey[800],
  accentColor: accentColor,
  backgroundColor: Colors.white,
  iconTheme: IconThemeData(color: accentColor),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: accentColor,
    foregroundColor: Colors.white,
  ),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: accentColor,
  ),
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  ),
);

ThemeData darkThemeData = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: Colors.grey[900],
    primary: accentColor,
  ),
  fontFamily: 'Montserrat',
  brightness: Brightness.dark,
  toggleableActiveColor: accentColor,
  primarySwatch: accentColor,
  // primaryColor: optionalGrey,
  accentColor: accentColor,
  backgroundColor: Colors.grey,
  iconTheme: IconThemeData(color: accentColor),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: accentColor,
    foregroundColor: Colors.white,
  ),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: accentColor,
  ),
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  ),
);
