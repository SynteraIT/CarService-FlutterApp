import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class confirmbooking extends StatelessWidget {
  const confirmbooking({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 220, 156),
        title: Text(
          "CONFIRM BOOKING",
          style: GoogleFonts.jockeyOne(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: width * 0.05),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(94, 0, 0, 0)),
                borderRadius: BorderRadius.circular(16),
              ),
              width: width * 0.95,
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MECHANIC DETAILS",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.supervised_user_circle,
                        size: 50,
                        color: Colors.amber,
                      ),
                      Text(
                        "MR. Name",
                        style: GoogleFonts.jockeyOne(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),

                      Text(
                        "4.9",
                        style: GoogleFonts.jockeyOne(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),

                      Row(
                        children: [
                          Icon(Icons.star, size: 40, color: Colors.amber),
                          Icon(Icons.star, size: 40, color: Colors.amber),
                          Icon(Icons.star, size: 40, color: Colors.amber),
                        ],
                      ),
                    ],
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
