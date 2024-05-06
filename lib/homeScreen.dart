import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
class homeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return AnimatedSplashScreen(
      splash: Image(
        image: AssetImage("images/Logo.png"),
      ),
      nextScreen: homeScreen(),
      splashIconSize:150,
      duration:40000,
      splashTransition:SplashTransition.scaleTransition,
      animationDuration:Duration(seconds: 9),
    );

  }
}