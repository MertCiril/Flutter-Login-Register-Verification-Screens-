import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:voting/main.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          height: ScreenSize.getScreenHeight(context)-60,
          width: ScreenSize.getScreenWidth(context),
          decoration: Background.setBackground,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Column(
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(


                        //height: ScreenSize.getScreenHeight(context)/2-20,
                        width: ScreenSize.getScreenWidth(context)/2-40,
                        decoration: const BoxDecoration (
                            borderRadius: BorderRadius.all( const Radius.circular(10)),

                        ),
                        child: TextFormField(
                           onChanged:null ,

                           decoration: const InputDecoration(

                             hintText: '   Name',
                             hintStyle: const TextStyle(
                               color: Colors.grey,
                               fontSize: 14.0,
                             ),
                             labelText: "Name" ,
                             labelStyle: TextStyle(

                               color: Colors.black,
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.all( Radius.circular(10)),
                               borderSide: BorderSide(color: Colors.black, width: 2),
                             ),
                           ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: Container(

                        decoration: const BoxDecoration (
                            borderRadius: BorderRadius.all( const Radius.circular(10)),

                        ),
                        //height: ScreenSize.getScreenHeight(context)/2-20,
                        width: ScreenSize.getScreenWidth(context)/2-40,
                        child: TextFormField(
                          onChanged:null ,

                          decoration: const InputDecoration(
                            hintText: '   Surname',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                            labelText: "Surname",
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all( Radius.circular(10)),

                              borderSide: BorderSide(color: Colors.black, width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration (
                        borderRadius: BorderRadius.all( Radius.circular(10)),

                    ),
                    width: ScreenSize.getScreenWidth(context)-65,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged:null ,
                      decoration: const InputDecoration(
                        hintText: '   E-mail',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                        labelText: "E-mail",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all( Radius.circular(10)),

                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration (
                        borderRadius: BorderRadius.all( Radius.circular(10)),

                    ),
                    width: ScreenSize.getScreenWidth(context)-65,
                    child: TextFormField(
                      onChanged:null ,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        hintText: '   Phone Number',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all( Radius.circular(10)),

                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration (
                        borderRadius: BorderRadius.all( Radius.circular(10)),

                    ),
                    width: ScreenSize.getScreenWidth(context)-65,
                    child: TextFormField(
                      onChanged:null ,
                      obscureText: true,

                      decoration: const InputDecoration(
                        hintText: '   Password',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all( Radius.circular(10)),

                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration (
                        borderRadius: BorderRadius.all( Radius.circular(10)),

                    ),
                    width: ScreenSize.getScreenWidth(context)-65,
                    child: TextFormField(
                      onChanged:null ,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: '   Password',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all( Radius.circular(10)),

                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:40,
                ),
                Container(
                  width: ScreenSize.getScreenWidth(context)-65,
                  height: 60,

                  child: ElevatedButton(onPressed:(){},child: Text("Sign In",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(222, 167, 162, 162),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  ),
                ),
                SizedBox(height: 50),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you already have an account?",style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                    ),),
                    TextButton(onPressed: (){}, child: Text("Login",  style: const TextStyle(
                        color: Colors.lightBlue,

                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


