import 'package:car_service/detail.dart';
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
              onTap: () {
                detail.setmechanic("MECHANIC 1 (John)");
                Navigator.pushNamed(context, '/confirmbooking');
              },
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
                      "MECHANIC 1 (John)",
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
              onTap: () {
                detail.setmechanic("MECHANIC 2 (Tim)");
                Navigator.pushNamed(context, '/confirmbooking');
              },
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
                      "MECHANIC 2 (Tim)",
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
              onTap: () {
                detail.setmechanic("MECHANIC 3 (Rocky)");
                Navigator.pushNamed(context, '/confirmbooking');
              },
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
                      "MECHANIC 3 (Rocky)",
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
              onTap: () {
                detail.setmechanic("MECHANIC 4 (Lazzy)");
                Navigator.pushNamed(context, '/confirmbooking');
              },
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
                      "MECHANIC 4 (Lazzy)",
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
              onTap: () {
                detail.setmechanic("MECHANIC 5 (Wikz)");
                Navigator.pushNamed(context, '/confirmbooking');
              },
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
                      "MECHANIC 5 (Wikz)",
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
