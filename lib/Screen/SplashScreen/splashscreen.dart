import 'dart:async';

import 'package:bhadama/AppInfo.dart';
import 'package:bhadama/Screen/HomeScreeen/HomeScreen.dart';
import 'package:bhadama/Screen/LoginScreen/LoginSCreen.dart';
import 'package:bhadama/Screen/OnboardingPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
      Duration(milliseconds: 2000),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return OnboardingPage();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 50.0,
                        child: Image.asset(AppInfo().logoPath, height: 400),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Text(
                  AppInfo().appName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 24.0),
                ).shimmer(count: 2),
              ),
            ],
          )
        ],
      ),
    );
  }
}
