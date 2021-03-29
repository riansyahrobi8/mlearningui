import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning/utils/constanta_colors.dart';
import 'package:mlearning/utils/size_config.dart';
import 'package:http/http.dart' as http;


class TheoryScreen extends StatelessWidget {

  var url = 'http://localhost/rest_ci/index.php/Materi';
  var response = await http.post(url, body: {'materi': 'doodle', 'color': 'blue'});

   final String userAgent;
   final http.Client _inner;

   UserAgentClient(this.userAgent, this._inner);

  Future<http.StreamedResponse> send(http.BaseRequest request) {
      request.headers['user-agent'] = userAgent;
      return _inner.send(request);
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teori"),
        //membuat judul di app bar
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              SvgPicture.asset(
                "assets/illustrations/theory.svg",
                width: getProportionateScreenWidth(414.0),
              )
            ],
          ),
          //membuat tampilan gambar pada background halaman 
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24.0)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(
                    20,
                    (index) => Container(
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
                            "Judul Materi.pdf",
                            style: TextStyle(color: kText1, fontSize: 16.0),
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
