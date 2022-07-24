import 'package:flutter/material.dart';
import 'package:onerx/LoginScreen.dart';
import 'main.dart';
import 'package:onerx/SignUpScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    navigateHome();
  }
  navigateHome() async{
    await Future.delayed(Duration(milliseconds: 1000),() {} );
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=> LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Column(
          children: const [
            SizedBox(
              height: 400.0,
            ),
            Text(
              "OneRx",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
            )
          ],
        )
    );
  }
}


