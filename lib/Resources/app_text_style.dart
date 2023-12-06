import 'package:flutter/material.dart';

class FurnitureTextStyle {
  //   ! Home Page Text Style .
  //  DecoratedTextTextStyle .
  TextStyle decoratedTextStyle() {
    return const TextStyle(
        fontSize: 18,
        height: 0.8,
        color: Colors.black,
        fontWeight: FontWeight.bold);
  }

  // RoomTextTextStyle .
  TextStyle roomTextStyle() {
    return const TextStyle(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400);
  }

  // CelsiusTextTextStyle .
  TextStyle celsiusTextStyle24() {
    return const TextStyle(fontSize: 12, color: Colors.white);
  }

  // WeatherTextTextStyle .
  TextStyle textStyle24() {
    return const TextStyle(
        fontSize: 50,
        color: Colors.white,
        height: 1.1,
        fontWeight: FontWeight.bold);
  }

  // MonthTextTextStyle .
  TextStyle januaryTextStyle() {
    return const TextStyle(
        fontSize: 12,
        color: Colors.white,
        height: 0.2,
        fontWeight: FontWeight.w500);
  }

  //  RecommendedTextTextStyle
  TextStyle recommendedTextStyle() {
    return const TextStyle(
        fontSize: 14, color: Colors.black, fontWeight: FontWeight.w800);
  }

  // ! Route Error Page Text Style
  // Route Error Text .
  TextStyle routeErrorTextStyle() {
    return const TextStyle(
        fontSize: 12,
        color: Colors.white,
        height: 0.2,
        fontWeight: FontWeight.w500);
  }

  // ! Detail Page Product Info Text Text Style .
  TextStyle productNameTextStyle() {
    return const TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600);
  }

  TextStyle productDetailTextStyle() {
    return const TextStyle(
        fontSize: 14, color: Colors.grey, fontWeight: FontWeight.normal);
  }

  TextStyle productPriceTextStyle() {
    return const TextStyle(
        fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold);
  }
}
