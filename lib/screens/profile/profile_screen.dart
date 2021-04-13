import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning/utils/constanta_colors.dart';
import 'package:mlearning/utils/size_config.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              SvgPicture.asset(
                "assets/illustrations/profile.svg",
                width: getProportionateScreenWidth(414.0),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24.0)),
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(72.0),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: getProportionateScreenWidth(120.0),
                    child: Image.asset(
                      "assets/logo/logo2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(24.0),
                ),
                Text(
                  "Bagas",
                  style: TextStyle(color: kText1, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(24.0),
                ),
                Text(
                  "123456789",
                  style: TextStyle(color: kText1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
