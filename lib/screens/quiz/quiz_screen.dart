import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning/screens/quiz/detail_quiz_screen.dart';
import 'package:mlearning/utils/constanta_colors.dart';
import 'package:mlearning/utils/size_config.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kuis"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              SvgPicture.asset(
                "assets/illustrations/quiz.svg",
                width: getProportionateScreenWidth(414.0),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(24.0)),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => DetailQuizScreen()));
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
                          "Kuis ${(index + 1).toString()}",
                          style: TextStyle(color: kText1, fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
