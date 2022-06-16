import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voting/home_screen.dart';
import 'package:voting/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: []);
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
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

