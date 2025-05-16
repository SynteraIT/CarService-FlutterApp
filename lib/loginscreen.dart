import 'package:car_service/auth/auth.dart';
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
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("./assets/carlogo.png")),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "EMAIL",
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
                _login();
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

  Future<void> _login() async {
    final user = await AuthService().logWithEmailAndPassword(
      usernameController.text,
      passwordController.text,
    );

    if (user != null) {
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Text(
                "ACCOUNT STATUS",
                style: GoogleFonts.jockeyOne(color: Colors.amber, fontSize: 22),
              ),
              content: Text(
                "LOGGING SUCCESSFUL",
                style: GoogleFonts.jockeyOne(color: Colors.black, fontSize: 18),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Dismiss the alert

                    Navigator.pushReplacementNamed(context, '/nav');
                  },
                  child: Text(
                    "OK",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.grey[800],
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
      );
    }
  }
}
