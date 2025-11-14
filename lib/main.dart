import 'package:flutter/material.dart';
import 'package:flutter_login_ui/app/themes/themes.dart';
import 'package:flutter_login_ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login UI',
      theme: ATheme.lightTheme,
      darkTheme: ATheme.darkTheme,
      themeMode: ThemeMode.light,
      home: SplashScreen(),
    );
  }
}
