import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning/routing/constanta_routing.dart';
import 'package:mlearning/utils/constanta_colors.dart';
import 'package:mlearning/utils/size_config.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(24.0)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(24.0),
              ),
              SvgPicture.asset("assets/illustrations/onboardind.svg"),
              SizedBox(
                height: getProportionateScreenHeight(24.0),
              ),
              Text(
                "Selamat Datang",
                style: TextStyle(color: kText1, fontSize: 16.0),
              ),
              SizedBox(
                height: getProportionateScreenHeight(36.0),
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                textAlign: TextAlign.justify,
                style: TextStyle(color: kText2, fontSize: 16.0),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: RichText(
                    text: TextSpan(
                        text: "Dari ",
                        style: TextStyle(color: kText2, fontSize: 16.0),
                        children: [
                      TextSpan(
                          text: "Infinitkode_Assets",
                          style: TextStyle(color: kPrimary, fontSize: 16.0))
                    ])),
              ),
              SizedBox(
                height: getProportionateScreenHeight(16.0),
              ),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: double.infinity),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, login);
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
                          backgroundColor: MaterialStateProperty.all(kPrimary)),
                      child: Text(
                        "Mari Mulai",
                        style: TextStyle(color: kWhite, fontSize: 16.0),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
