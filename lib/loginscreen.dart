import 'package:car_service/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("./assets/profile.png")),
            SizedBox(height: 80),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "USER NAME",
                  style: GoogleFonts.jockeyOne(
                    color: Colors.amberAccent,
                    fontSize: 20,
                  ),
                ),
                textfield(
                  reusetexteditincontroller: usernameController,
                  password: false,
                ),
              ],
            ),

            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PASSWORD",
                  style: GoogleFonts.jockeyOne(
                    color: Colors.amberAccent,
                    fontSize: 20,
                  ),
                ),
                textfield(
                  reusetexteditincontroller: passwordController,
                  password: true,
                ),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/nav');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,

                minimumSize: Size(30, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                elevation: 2,
              ),
              child: Text(
                "LOGIN",
                style: GoogleFonts.jockeyOne(color: Colors.black, fontSize: 40),
              ),
            ),

            SizedBox(height: 20),

            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text(
                "CREATE NEW",
                style: GoogleFonts.jockeyOne(color: Colors.amber, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
