import 'package:flutter/material.dart';
import 'package:furniture_app/Resources/resources.dart';

class RouteErrorPage extends StatelessWidget {
  const RouteErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Not Found Pages",
            style: Resources.textStyle.routeErrorTextStyle()),
      ),
    );
  }
}
