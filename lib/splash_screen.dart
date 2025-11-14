import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_login_ui/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(child: Lottie.asset('assets/carsafety.json')),
      nextScreen: LoginScreen(),
      splashIconSize: 300,
      duration: 5000,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
