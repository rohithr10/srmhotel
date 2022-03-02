import 'package:flutter/material.dart';
import 'package:srmhotel/module/auth/login/loginpage.dart';
import 'package:srmhotel/module/auth/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  //SignInScreen.routeName: (context) => SignInScreen(),
  //ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen()
};



//class Routes {
  //static const String Route_Login = "/login";

  //static Map<String, WidgetBuilder> getRoutes() {
    //return {
      //Routes.Route_Login: (context) => const LoginPage(),
      //SplashScreen.routeName: (context) => SplashScreen(),
    //};
  //}
//}
