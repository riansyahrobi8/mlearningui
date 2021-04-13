import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning/routing/constanta_routing.dart';
import 'package:mlearning/utils/constanta_colors.dart';
import 'package:mlearning/utils/size_config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Map<String, dynamic>> menus = [
    {"Materi": course},
    {"Kuis": quiz},
    {"Tanya Jawab": qna}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, profile);
              },
              title: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(24.0)),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    color: kText1,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, about);
              },
              title: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(24.0)),
                child: Text(
                  "Tentang Aplikasi",
                  style: TextStyle(
                    color: kText1,
                    fontSize: 18.0,
                  ),
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
            child: Column(
              children: [
                ...List.generate(
                  menus.length,
                  (index) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, menus[index].values.single);
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
                            menus[index].keys.single,
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
        ],
      ),
    );
  }
}
