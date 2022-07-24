import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transparent Login App',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [


                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 140,
                        ),

                        const SizedBox(
                          height: 140,
                        ),
                        _loginLabel(),
                        const SizedBox(
                          height: 40,
                        ),
                        _labelTextInput("Email", "UserName", false),
                        const SizedBox(
                          height: 50,
                        ),
                        _labelTextInput("Password", "Password", true),
                        const SizedBox(
                          height: 50,
                        ),
                        _loginBtn(),
                        const SizedBox(
                          height: 150,
                        ),

                        Row(
                          children: [
                            const SizedBox(
                              width: 80,
                            ),
                            _signUpLabel("New Member?",
                                const Color(0xff909090)),

                            _signUpLabel("Sign Up", const Color(0xff164276)),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _signUpLabel(String label, Color textColor) {
  return Text(
    label,
    style: GoogleFonts.abel(
      textStyle: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w100,
        fontSize: 18,
      ),
    ),
  );
}

Widget _loginBtn() {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: const BoxDecoration(
      color: Color(0xff008fff),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextButton(
      onPressed: () => {},
      child: Text(
        "Login",
        style: GoogleFonts.abel(
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
      ),
    ),
  );
}

Widget _labelTextInput(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      TextField(
        obscureText: isPassword,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.abel(
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    ],
  );
}

Widget _loginLabel() {
  return Align(
    alignment: Alignment.topLeft,
    child: Column(
      children: [
        Text(
          "Login to your Account",
          style: GoogleFonts.abel(
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 34,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    )
  );
}
