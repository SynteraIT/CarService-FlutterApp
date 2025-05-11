import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class contactus extends StatelessWidget {
  const contactus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 220, 156),
        title: Text(
          "CONTACT US",
          style: GoogleFonts.jockeyOne(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage("./assets/map2.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EMAIL",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "MOBILE NUMBER",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "LAND NUMBER",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "ADDRESS",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
