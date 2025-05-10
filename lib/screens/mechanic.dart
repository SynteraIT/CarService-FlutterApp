import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mechanic extends StatelessWidget {
  const mechanic({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 220, 156),
        title: Text(
          "SELECT MECHANIC",
          style: GoogleFonts.jockeyOne(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(94, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: width * 0.95,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.people, color: Colors.amber, size: 40),
                    SizedBox(width: 10),
                    Text(
                      "MECHANIC 1",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.amber,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(94, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: width * 0.95,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.people, color: Colors.amber, size: 40),
                    SizedBox(width: 10),
                    Text(
                      "MECHANIC 2",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.amber,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(94, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: width * 0.95,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.people, color: Colors.amber, size: 40),
                    SizedBox(width: 10),
                    Text(
                      "MECHANIC 3",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.amber,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
