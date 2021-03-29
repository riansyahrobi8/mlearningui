import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning/routing/constanta_routing.dart';
import 'package:mlearning/utils/constanta_colors.dart';
import 'package:mlearning/utils/size_config.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int splashDelay = 8;

  void navigationPage() {
    Navigator.pushReplacementNamed(context, onBoarding);
  }

  Timer _loadWidget() {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    _loadWidget();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(72.0),
            ),
            SizedBox(
              width: getProportionateScreenWidth(120.0),
              child: Image.asset(
                "assets/logo/logo2.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(24.0),
            ),
            Text(
              "M-Learning",
              style: TextStyle(color: kText1),
            ),
            SizedBox(
              height: getProportionateScreenHeight(60.0),
            ),
            Expanded(
              child: SvgPicture.asset(
                "assets/illustrations/splash.svg",
                width: getProportionateScreenWidth(342.0),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(24.0),
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(kPrimary),
            ),
            SizedBox(
              height: getProportionateScreenHeight(24.0),
            ),
            Text(
              "Infinitkode_Assets",
              style: TextStyle(color: kText1),
            ),
            SizedBox(
              height: getProportionateScreenHeight(24.0),
            ),
          ],
        ),
      ),
    );
  }
}
