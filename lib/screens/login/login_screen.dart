import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning/routing/constanta_routing.dart';
import 'package:mlearning/utils/constanta_colors.dart';
import 'package:mlearning/utils/size_config.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(24.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(24.0),
              ),
              Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset("assets/illustrations/login.svg")),
              SizedBox(
                height: getProportionateScreenHeight(56.0),
              ),
              Text(
                "Email",
                style: TextStyle(color: kText2, fontSize: 16.0),
              ),
              SizedBox(
                height: getProportionateScreenHeight(4.0),
              ),
              Form(
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(24.0)),
                          filled: true,
                          hintText: "Masukan email Anda",
                          hintStyle: TextStyle(color: kText2, fontSize: 14.0),
                          fillColor: kBackgroundCard,
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: BorderSide(style: BorderStyle.none)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide:
                                  BorderSide(style: BorderStyle.none))))),
              SizedBox(
                height: getProportionateScreenHeight(24.0),
              ),
              Text(
                "Password",
                style: TextStyle(color: kText2, fontSize: 16.0),
              ),
              SizedBox(
                height: getProportionateScreenHeight(4.0),
              ),
              Form(
                  child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(24.0)),
                          filled: true,
                          hintText: "Masukan password Anda",
                          hintStyle: TextStyle(color: kText2, fontSize: 14.0),
                          fillColor: kBackgroundCard,
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: BorderSide(style: BorderStyle.none)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide:
                                  BorderSide(style: BorderStyle.none))))),
              SizedBox(
                height: getProportionateScreenHeight(136.0),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: double.infinity),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, home);
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
                        "Masuk",
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
