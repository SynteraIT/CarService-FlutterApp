import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage("./assets/map.png"),
                fit: BoxFit.fitWidth,
              ),
            ),

            SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(94, 0, 0, 0)),
                borderRadius: BorderRadius.circular(25),
              ),
              width: width * 0.95,
              height: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage("./assets/bookcar.png")),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/booking');
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
                      "BOOKING",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(94, 0, 0, 0)),
                borderRadius: BorderRadius.circular(25),
              ),
              width: width * 0.95,
              height: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage("./assets/contactus.png")),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,

                      minimumSize: Size(30, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 2,
                    ),
                    child: Text(
                      "Contact US",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.white,
                        fontSize: 40,
                      ),
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
