import 'package:car_service/auth/auth.dart';
import 'package:car_service/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cpasswordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "PERSONAL DETAILS",
                style: GoogleFonts.jockeyOne(
                  color: Colors.amberAccent,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 30),
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
                    "EMAIL",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.amberAccent,
                      fontSize: 20,
                    ),
                  ),
                  textfield(
                    reusetexteditincontroller: emailController,
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
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CONFIRM PASSWORD",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.amberAccent,
                      fontSize: 20,
                    ),
                  ),
                  textfield(
                    reusetexteditincontroller: cpasswordController,
                    password: true,
                  ),
                ],
              ),

              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PHONE NUMBER",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.amberAccent,
                      fontSize: 20,
                    ),
                  ),
                  textfield(
                    reusetexteditincontroller: phoneController,
                    password: false,
                  ),
                ],
              ),

              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  _signup();
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
                  "Register",
                  style: GoogleFonts.jockeyOne(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
              ),

              SizedBox(height: 20),

              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  "LOGIN",
                  style: GoogleFonts.jockeyOne(
                    color: Colors.amber,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _signup() async {
    // Validate passwords match
    if (passwordController.text != cpasswordController.text) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Passwords do not match')));
      return;
    }

    final user = await AuthService().createUserWithEmaiAndPassword(
      usernameController.text,
      emailController.text,
      passwordController.text,
      phoneController.text,
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
                "ACCOUNT SUCCESSFULLY CREATED",
                style: GoogleFonts.jockeyOne(color: Colors.black, fontSize: 18),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Dismiss the alert

                    Navigator.pushReplacementNamed(context, '/login');
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
