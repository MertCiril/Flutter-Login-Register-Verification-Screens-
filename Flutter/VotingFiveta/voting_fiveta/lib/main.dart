import 'dart:js';

import 'package:flutter/material.dart';
import 'package:voting_fiveta/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class Background {
 static const Decoration setBackground = BoxDecoration(
      image: DecorationImage(
          image: AssetImage("images/background.jpg"), fit: BoxFit.cover));
}

class ScreenSize{
static double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
static double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
}
