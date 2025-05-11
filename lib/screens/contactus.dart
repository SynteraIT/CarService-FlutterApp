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
        child: Column(children: [Padding(padding: const EdgeInsets.all(12.0))]),
      ),
    );
  }
}
