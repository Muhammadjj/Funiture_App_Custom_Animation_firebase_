import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_app/Controller/routes_method.dart';
import 'Resources/const.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Furniture App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(
          primaryColor,
          <int, Color>{
            50: const Color(primaryColor).withOpacity(0.1),
            100: const Color(primaryColor).withOpacity(0.2),
            200: const Color(primaryColor).withOpacity(0.3),
            300: const Color(primaryColor).withOpacity(0.4),
            400: const Color(primaryColor).withOpacity(0.5),
            500: const Color(primaryColor).withOpacity(0.6),
            600: const Color(primaryColor).withOpacity(0.7),
            700: const Color(primaryColor).withOpacity(0.8),
            800: const Color(primaryColor).withOpacity(0.9),
            900: const Color(primaryColor).withOpacity(1.0),
          },
        ),
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      initialRoute: RoutesName.homepage,
      onGenerateRoute: RoutesMethod.onGenerateMethod,
    );
  }
}
