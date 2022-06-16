import 'package:flutter/material.dart';

import 'main.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Container(

            height: ScreenSize.getScreenHeight(context)-60,
            width: ScreenSize.getScreenWidth(context),
            decoration: Background.setBackground,
            child: Column(

              children: [

                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 190,10, 10),
                  child: Container(

                    width: ScreenSize.getScreenWidth(context)-65,

                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Verification Code",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all( Radius.circular(10)),

                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all( Radius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: ScreenSize.getScreenWidth(context)-65,
                  height: 60,

                  child: ElevatedButton(onPressed:(){},child: const Text("Verify",textAlign: TextAlign.center,style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(222, 167, 162, 162),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Divider(
                  color: Colors.black,
                  thickness: 1.25,
                  indent: 25,
                  endIndent: 25,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center  ,
                  children: [
                    Text ("Didn't get code?"),
                    TextButton(onPressed: (){}, child: Text("Send Again",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ],
                )

              ],
            ),
          ),
        ),
      );

  }
}
