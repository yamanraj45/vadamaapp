import 'package:bhadama/ProductList.dart';
import 'package:bhadama/Screen/DetailUiScreen/detailUiScreen.dart';
import 'package:bhadama/Screen/GridScreen/GridScreens.dart';
import 'package:bhadama/Screen/HomeScreeen/HomeScreen.dart';
import 'package:bhadama/Screen/HomeScreeen/components/body.dart';
import 'package:bhadama/Screen/LoginScreen/LoginSCreen.dart';
import 'package:bhadama/Screen/OnboardingPage.dart';
import 'package:bhadama/Screen/SplashScreen/splashscreen.dart';
import 'package:bhadama/Screen/TabScreen/tabScreen.dart';
import 'package:bhadama/Screen/profileUI.dart';
import 'package:bhadama/addProduct.dart';
import 'package:bhadama/productCards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
            bodySmall: GoogleFonts.oswald(textStyle: textTheme.bodySmall),
          ),
          primarySwatch: Colors.grey,
        ),
        home: SplashScreen());
  }
}
