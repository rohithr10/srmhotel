import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:srmhotel/helper/constants/app_defaultbutton.dart';
import 'package:srmhotel/helper/constants/app_sizeconfig.dart';
import 'package:srmhotel/module/auth/splash/splashscreen_bloc.dart';
import 'package:srmhotel/module/auth/splash/splashscreen_body.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var _bloc;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _bloc = BlocProvider.of<SplashScreenBloc>(context);
    sizeconfig().init(context);

    return BlocProvider<SplashScreenBloc>(
      creator: (_context, _bag) => SplashScreenBloc(),
      child: Scaffold(
        body: _bodycontent(),
      ),
    );
  }

  Widget _bodycontent() {
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
                      _bloc.currentpage = value;
                    });
                  },
                  itemCount: _bloc.splashData.length,
                  itemBuilder: (context, index) => _bloc.splashcontent(
                    image: _bloc.splashData[index]["image"]?.toString() ?? '',
                    text: _bloc.splashData[index]["text"]?.toString() ?? '',
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
                        children: List.generate(_bloc.splashData.length,
                            (index) => _buildDot(index: index))),
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

  Widget _buildDot({int index = 0}) {
    return Container();
  }
}
