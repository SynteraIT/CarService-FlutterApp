import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 80),
                Text(
                  "CAR SERVICE",
                  style: GoogleFonts.jockeyOne(
                    color: Colors.amberAccent,
                    fontSize: 60,
                  ),
                ),
                Text(
                  "SOLUTION",
                  style: GoogleFonts.jockeyOne(
                    color: Colors.amberAccent,
                    fontSize: 60,
                  ),
                ),
              ],
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
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
                "GET START",
                style: GoogleFonts.jockeyOne(color: Colors.black, fontSize: 40),
              ),
            ),
            Image(image: AssetImage("./assets/image1.png"), fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
