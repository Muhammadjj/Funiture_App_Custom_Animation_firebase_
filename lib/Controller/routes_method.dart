import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/Pages/Detail_Page/detail_page.dart';
import 'package:furniture_app/Pages/Error_Page/route_error_page.dart';
import 'package:furniture_app/Pages/Home_Page/home_page.dart';

import '../Model/detail_model_class.dart';

class RoutesName {
  static const homepage = "HomePage";
  static const detailPage = "DetailPage";
}

class RoutesMethod {
  static Route<dynamic> onGenerateMethod(RouteSettings settings) {
    // 1 .
    if (settings.name == RoutesName.homepage) {
      return AllPageNavigatesController(child: const HomePage());
    }
    //  2 .
    else if (settings.name == RoutesName.detailPage) {
      return AllPageNavigatesController(
          child: DetailPage(
        detailModelClass: settings.arguments as DetailModelClass,
      ));
    }
    // Error Page .
    else {
      return AllPageNavigatesController(child: const RouteErrorPage());
    }
  }
}

class AllPageNavigatesController extends PageRouteBuilder {
  final Widget child;
  AllPageNavigatesController({required this.child})
      : super(
          pageBuilder: (context, animation1, animation2) => child,
          transitionDuration: const Duration(milliseconds: 300),
          reverseTransitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
