import 'package:flutter/material.dart';
import 'package:swifty_companion/routes.dart';
import 'package:swifty_companion/screens/welcome/welcome_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutty Companion',
      theme: theme(),
      // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}

ThemeData theme() {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kBgColor,
    canvasColor: kSecondaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: kBgColor,
      elevation: 0,
      brightness: Brightness.light,
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.white),
      ),
    ),
    inputDecorationTheme: inputDecorationTheme(),
    // textTheme: TextTheme(
    //   bodyText1: TextStyle(color: kPrimaryColor),
    //   bodyText2: TextStyle(color: kPrimaryColor),
    // ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: Colors.white),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
