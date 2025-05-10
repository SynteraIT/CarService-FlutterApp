import 'package:car_service/firebase_options.dart';
import 'package:car_service/screens/booking.dart';
import 'package:car_service/screens/confirmbooking.dart';
import 'package:car_service/screens/home.dart';
import 'package:car_service/loginscreen.dart';
import 'package:car_service/navigation.dart';
import 'package:car_service/screens/makeappointment.dart';
import 'package:car_service/screens/mechanic.dart';
import 'package:car_service/screens/typeofservices.dart';
import 'package:car_service/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        '/home': (context) => Home(),
        '/nav': (context) => Navigationpages(),
        '/booking': (context) => Booking(),
        '/typeofservices': (context) => typeofservices(),
        '/makeappointment': (context) => makeappointment(),
        '/mechanic': (context) => mechanic(),
        '/confirmbooking': (context) => confirmbooking(),
      },
      home: const Booking(),
    );
  }
}
