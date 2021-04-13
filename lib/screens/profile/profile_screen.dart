import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning/routing/constanta_routing.dart';
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
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenWidth(24.0)),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: double.infinity),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, login, (route) => false);
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.all(
                                getProportionateScreenWidth(16.0))),
                            elevation: MaterialStateProperty.all(0),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100.0),
                                        topRight: Radius.circular(8.0),
                                        bottomRight: Radius.circular(100.0),
                                        bottomLeft: Radius.circular(100.0)))),
                            backgroundColor:
                                MaterialStateProperty.all(kPrimary)),
                        child: Text(
                          "Keluar",
                          style: TextStyle(color: kWhite, fontSize: 16.0),
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
