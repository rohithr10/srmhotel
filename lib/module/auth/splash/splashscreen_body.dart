import 'package:flutter/material.dart';
import 'package:srmhotel/helper/constants/app_defaultbutton.dart';
import 'package:srmhotel/helper/constants/app_sizeconfig.dart';
import 'package:srmhotel/helper/constants/app_theme.dart';
import 'package:srmhotel/module/auth/login/loginpage.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentpage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => splashcontent(
                    image: splashData[index]["image"]?.toString() ?? '',
                    text: splashData[index]["text"]?.toString() ?? '',
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getproportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => buildDot(index: index))),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        //Navigator.pushNamed(context, LoginPage.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: KAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentpage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentpage == index ? KPrimaryColor : Colors.black,
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
