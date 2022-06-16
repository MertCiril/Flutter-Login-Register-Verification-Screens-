import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:voting/register_screen.dart';
import 'package:voting/verification_screen.dart';

import 'login_screen.dart';
import 'main.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<CurvedNavigationBarState> _NavKey = GlobalKey();
  var PagesAll = [LoginScreen(),RegisterScreen(),VerificationScreen(),RegisterScreen()];
  var myindex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Container(
        decoration: Background.setBackground,
        child: CurvedNavigationBar(
          height: 60,
          backgroundColor:const Color.fromARGB(222, 191, 189, 189),
          color: Color.fromARGB(222, 167, 162, 162),
          buttonBackgroundColor:  Color.fromARGB(222, 167, 162, 162),

          animationDuration: const Duration(milliseconds: 300),
          key: _NavKey,
          items:  [
            Icon((myindex == 0)?Icons.add  : Icons.add   ) ,
            Icon( Icons.emoji_people ),
            Icon( Icons.check_box ),
            Icon(Icons.settings )
          ],
          onTap: (index) {
            setState(() {
              myindex = index;

            });
          },
        ),
      ),
      body: PagesAll[myindex],

    );
  }
}