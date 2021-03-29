import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning/utils/constanta_colors.dart';
import 'package:mlearning/utils/size_config.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              SvgPicture.asset(
                "assets/illustrations/video.svg",
                width: getProportionateScreenWidth(414.0),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24.0)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(
                    20,
                    (index) => GestureDetector(
                      onTap: () {
                        launch("https://www.youtube.com/watch?v=X3wYCb2tACk");
                      },
                      child: Container(
                        width: double.infinity,
                        height: getProportionateScreenHeight(62.0),
                        margin: EdgeInsets.only(
                            bottom: getProportionateScreenWidth(16.0)),
                        decoration: BoxDecoration(
                            color: kBackgroundCard,
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(8.0))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(24.0)),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Video",
                              style: TextStyle(color: kText1, fontSize: 16.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
