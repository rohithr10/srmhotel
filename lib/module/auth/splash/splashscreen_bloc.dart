import 'package:bloc_provider/bloc_provider.dart';

class SplashScreenBloc implements Bloc {
  @override
  void dispose() {
    // TODO: implement dispose
  }
  int currentpage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/breakfast.png"
    },
    {
      "text":
          "We help people connect with tokoto \n around united sate of america",
      "image": "assets/images/barbecue.png"
    },
    {
      "text": "we show the easy way to shop. \njust stay at home  ",
      "image": "assets/images/donut_love.png"
    },
  ];
}
