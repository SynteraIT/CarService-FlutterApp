import 'package:car_service/loginscreen.dart';
import 'package:car_service/signup.dart';
import 'package:flutter/material.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => Loginscreen(),
        '/signup': (context) => signupscreen(),
      },
      home: const Splashscreen(),
    );
  }
}
