import 'package:flutter/material.dart';
import 'package:mlearning/routing/constanta_routing.dart';
import 'package:mlearning/screens/home/home_screen.dart';
import 'package:mlearning/screens/login/login_screen.dart';
import 'package:mlearning/screens/onboarding/onboarding_screen.dart';
import 'package:mlearning/screens/qna/qna_screen.dart';
import 'package:mlearning/screens/quiz/quiz_screen.dart';
import 'package:mlearning/screens/splash/splash_screen.dart';
import 'package:mlearning/screens/theory/course/course_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case onBoarding:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case course:
        return MaterialPageRoute(builder: (_) => CourseScreen());
      // case video:
      //   return MaterialPageRoute(builder: (_) => VideoScreen());
      case quiz:
        return MaterialPageRoute(builder: (_) => QuizScreen());
      case qna:
        return MaterialPageRoute(builder: (_) => QnaScreen());
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
