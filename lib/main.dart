import 'package:flutter/material.dart';
import 'package:srmhotel/config/app_theme.dart';
import 'package:srmhotel/config/router.dart';
import 'package:srmhotel/helper/constants/app_string.dart';
import 'package:srmhotel/module/auth/login/loginpage.dart';
import 'package:srmhotel/module/auth/splash/splash_screen.dart';
//import 'module/auth/login/model/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.appName,
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
