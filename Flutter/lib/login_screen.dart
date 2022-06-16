import 'package:flutter/material.dart';

import 'main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

bool registerState = false;
bool _isPasswordEightCharacters = false;
bool _hasPasswordOneNumber = false;
bool _hasCharacter = false;
var email, passwordNew;
var _key = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  int activeIndex = 0;
  var email, passwordNew;

  @override
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: ScreenSize.getScreenHeight(context)-60,
          width: ScreenSize.getScreenWidth(context),
          decoration: Background.setBackground,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                Container(
                  width: ScreenSize.getScreenWidth(context)-65,

                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (receivedEmail) {
                      email = receivedEmail;
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8.0),
                      labelText: '  Email',
                      hintText: '   E-mail',
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      floatingLabelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black, width:2),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: ScreenSize.getScreenWidth(context)-65,

                  child: TextField(
                    onChanged: (receivedPassword) {
                      passwordNew = receivedPassword;
                    },
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8.0),
                      labelText: '  Password',
                      hintText: '   Password',
                      hintStyle: const TextStyle(
                        color: Colors.grey,

                      ),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      floatingLabelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const LoginScreen()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                        child: Text(
                          "I forgot my password",
                          style: const TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: ScreenSize.getScreenWidth(context)-65,
                  height: 60,
                  child: ElevatedButton(onPressed:(){},child: Text("Login",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(222, 167, 162, 162),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),

                Divider(
                  color: Colors.black,
                  thickness: 1,

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const LoginScreen()));
                      },
                      child: const Text(
                        'Register',
                        style: const TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}