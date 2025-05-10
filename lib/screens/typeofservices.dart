import 'package:car_service/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class typeofservices extends StatelessWidget {
  const typeofservices({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 220, 156),
        title: Text(
          "TYPE OF SERVICE",
          style: GoogleFonts.jockeyOne(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(94, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: width * 0.95,
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "OIL CHANGES",
                        style: GoogleFonts.jockeyOne(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          detail.settypeofservice("Oil Changes");
                          Navigator.pushNamed(context, '/makeappointment');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,

                          minimumSize: Size(25, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          elevation: 2,
                        ),
                        child: Text(
                          "SELECT",
                          style: GoogleFonts.jockeyOne(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(94, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: width * 0.95,
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "BATTERY CHANGES",
                        style: GoogleFonts.jockeyOne(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          detail.settypeofservice("Battery Changes");
                          Navigator.pushNamed(context, '/makeappointment');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,

                          minimumSize: Size(25, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          elevation: 2,
                        ),
                        child: Text(
                          "SELECT",
                          style: GoogleFonts.jockeyOne(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
