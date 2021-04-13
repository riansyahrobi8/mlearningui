import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning/screens/qna/buiild_question_list.dart';
import 'package:mlearning/screens/qna/build_empty_qna.dart';
import 'package:mlearning/utils/size_config.dart';

class QnaScreen extends StatefulWidget {
  @override
  _QnaScreenState createState() => _QnaScreenState();
}

class _QnaScreenState extends State<QnaScreen> {
  bool data = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Tanya Jawab"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              SvgPicture.asset(
                "assets/illustrations/qna.svg",
                width: getProportionateScreenWidth(414.0),
              )
            ],
          ),
          data ? BuildQuestionsList() : BuildEmptyQnA()
        ],
      ),
    );
  }
}
