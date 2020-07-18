import 'package:doctor_booking_app/splash/introSlides.dart';
import 'package:flutter/material.dart';
import 'package:doctor_booking_app/loginScreen.dart';
import 'package:doctor_booking_app/splash/splashScreen.dart';
import 'package:doctor_booking_app/views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(),
      routes: {
        'home': (context) => HomePage(),
        'logout': (context) => LoginScreen(),
        'splash': (context) => SplashScreen(),
        'login': (context) => LoginScreen(),
        'IntroSlides': (context) => IntroSlides(),
      },
    );
  }
}
