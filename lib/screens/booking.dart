import 'package:car_service/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 220, 156),
        title: Text(
          "SELECT CAR",
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
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(94, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: width * 0.95,
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Sedans: four-door vehicles with \na separate trunk.",
                        style: GoogleFonts.jockeyOne(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setselectcar("sedans");
                          print(Detail().vehicle);
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
                          "ADD",
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
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(94, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: width * 0.95,
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "SUVs: large vehicles with a high \nground clearance and \nfour-wheel drive",
                        style: GoogleFonts.jockeyOne(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print(Detail().vehicle);
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
                          "ADD",
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
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(94, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: width * 0.95,
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Crossovers: vehicles that combine \nfeatures of SUVs and hatchbacks.",
                        style: GoogleFonts.jockeyOne(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/typeofservices');
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
                          "ADD",
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

  setselectcar(String car) {
    detail.vehicle = car;
  }
}
