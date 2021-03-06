import 'package:EcommerceUI/constants.dart';
import 'package:flutter/material.dart';
import 'package:EcommerceUI/screens/home/Home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Ecommerce UI',
    theme: ThemeData(
      scaffoldBackgroundColor: kBackgroundColor,
      primaryColor: kPrimaryColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Home(),
  ));
}
