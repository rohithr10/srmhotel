import 'package:flutter/material.dart';

const KPrimaryColor = Color(0xFF6C63FF);
const KPrimaryLightColor = Color(0xFFFFECDF);
const KPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF6C63FF), Color(0xFF6C63FF)],
);
const KSecondaryColor = Color(0xFF979797);
const KTextColor = Color(0xFF757575);
const KAnimationDuration = Duration(milliseconds: 200);

//form error

final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String KEmailNullError = "Please enter your email";
const String KInvalidEmailError = "Please enter valid email";
const String KPassNullError = "Please enter password";
const String KShortPassError = "Password is too short";
const String KMatchPassError = "Password doen't match";


ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primarySwatch: Colors.blue,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: KTextColor),
      gapPadding: 10);
  return InputDecorationTheme(
    // floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder);
}

TextTheme textTheme() {
  return TextTheme(
      bodyText1: TextStyle(color: KTextColor),
      bodyText2: TextStyle(color: KTextColor));
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Color(0XFF8B8B8B),
          fontSize: 18,
        ),
      ));
}