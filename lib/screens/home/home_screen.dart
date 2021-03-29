import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning/routing/constanta_routing.dart';
import 'package:mlearning/utils/constanta_colors.dart';
import 'package:mlearning/utils/size_config.dart';

class HomeScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(""),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {},
              title: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(24.0)),
                child: Text(
                  "Home",
                  style: TextStyle(
                      color: kText1,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(24.0)),
                child: Text(
                  "Tentang Aplikasi",
                  style: TextStyle(
                      color: kText1,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              SvgPicture.asset(
                "assets/illustrations/home.svg",
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
                  GestureDetector(
                    // klik teori
                    onTap: () {
                      Navigator.pushNamed(context, course);
                    },
                    child: Container(
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            width: double.infinity,
                            height: getProportionateScreenHeight(72.0),
                            decoration: BoxDecoration(
                                color: kBackgroundMenu,
                                borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(100.0))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      getProportionateScreenWidth(100.0),
                                  vertical: getProportionateScreenHeight(16.0)),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Teori",
                                  style: TextStyle(
                                      color: kPrimary,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: getProportionateScreenWidth(144.0),
                            height: getProportionateScreenWidth(144.0),
                            decoration: BoxDecoration(
                                color: kWhite,
                                shape: BoxShape.circle,
                                border: Border.all(color: kPrimary)),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  getProportionateScreenWidth(24.0)),
                              child: SvgPicture.asset(
                                  "assets/illustrations/theory.svg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(24.0),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.pushNamed(context, video);
                  //   },
                  //   child: Container(
                  //     child: Stack(
                  //       alignment: Alignment.centerLeft,
                  //       children: [
                  //         Container(
                  //           width: double.infinity,
                  //           height: getProportionateScreenHeight(72.0),
                  //           decoration: BoxDecoration(
                  //               color: kBackgroundMenu,
                  //               borderRadius: BorderRadius.circular(
                  //                   getProportionateScreenWidth(100.0))),
                  //           child: Padding(
                  //             padding: EdgeInsets.symmetric(
                  //                 horizontal:
                  //                     getProportionateScreenWidth(100.0),
                  //                 vertical: getProportionateScreenHeight(16.0)),
                  //             child: Align(
                  //               alignment: Alignment.centerRight,
                  //               child: Text(
                  //                 "Video",
                  //                 style: TextStyle(
                  //                     color: kPrimary,
                  //                     fontSize: 16.0,
                  //                     fontWeight: FontWeight.bold),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         Container(
                  //           width: getProportionateScreenWidth(144.0),
                  //           height: getProportionateScreenWidth(144.0),
                  //           decoration: BoxDecoration(
                  //               color: kWhite,
                  //               shape: BoxShape.circle,
                  //               border: Border.all(color: kPrimary)),
                  //           child: Padding(
                  //             padding: EdgeInsets.all(
                  //                 getProportionateScreenWidth(24.0)),
                  //             child: SvgPicture.asset(
                  //                 "assets/illustrations/video.svg"),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: getProportionateScreenHeight(24.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, quiz);
                    },
                    child: Container(
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Container(
                            width: double.infinity,
                            height: getProportionateScreenHeight(72.0),
                            decoration: BoxDecoration(
                                color: kBackgroundMenu,
                                borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(100.0))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      getProportionateScreenWidth(100.0),
                                  vertical: getProportionateScreenHeight(16.0)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Kuis",
                                  style: TextStyle(
                                      color: kPrimary,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: getProportionateScreenWidth(144.0),
                            height: getProportionateScreenWidth(144.0),
                            decoration: BoxDecoration(
                                color: kWhite,
                                shape: BoxShape.circle,
                                border: Border.all(color: kPrimary)),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  getProportionateScreenWidth(24.0)),
                              child: SvgPicture.asset(
                                  "assets/illustrations/quiz.svg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(24.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, qna);
                    },
                    child: Container(
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Container(
                            width: double.infinity,
                            height: getProportionateScreenHeight(72.0),
                            decoration: BoxDecoration(
                                color: kBackgroundMenu,
                                borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(100.0))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(64.0),
                                  vertical: getProportionateScreenHeight(16.0)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Tanya Jawab",
                                  style: TextStyle(
                                      color: kPrimary,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: getProportionateScreenWidth(144.0),
                            height: getProportionateScreenWidth(144.0),
                            decoration: BoxDecoration(
                                color: kWhite,
                                shape: BoxShape.circle,
                                border: Border.all(color: kPrimary)),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  getProportionateScreenWidth(24.0)),
                              child: SvgPicture.asset(
                                  "assets/illustrations/qna.svg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
