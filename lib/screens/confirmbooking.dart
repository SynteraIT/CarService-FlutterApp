import 'package:car_service/detail.dart';
import 'package:car_service/firebasefunction.dart';
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
                        detail.mechanic.toString(),
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
                          Icon(Icons.star, size: 18, color: Colors.amber),
                          Icon(Icons.star, size: 18, color: Colors.amber),
                          Icon(Icons.star, size: 18, color: Colors.amber),
                          Icon(Icons.star, size: 18, color: Colors.amber),
                          Icon(Icons.star, size: 18, color: Colors.amber),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 6, // left space
                    endIndent: 10, // right space
                  ),

                  Text(
                    "BOOKING SUMMARY",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SERVICE TYPE                 ",
                        style: GoogleFonts.jockeyOne(
                          color: const Color.fromARGB(255, 97, 92, 92),
                          fontSize: 20,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          detail.typeofservice.toString(),
                          style: GoogleFonts.jockeyOne(
                            color: const Color.fromARGB(255, 97, 92, 92),
                            fontSize: 20,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "CREATE DATE",
                        style: GoogleFonts.jockeyOne(
                          color: const Color.fromARGB(255, 97, 92, 92),
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        detail.dateTime.toString().split(' ')[0],
                        style: GoogleFonts.jockeyOne(
                          color: const Color.fromARGB(255, 97, 92, 92),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TIME SLOT",
                        style: GoogleFonts.jockeyOne(
                          color: const Color.fromARGB(255, 97, 92, 92),
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        detail.timeslot.toString(),
                        style: GoogleFonts.jockeyOne(
                          color: const Color.fromARGB(255, 97, 92, 92),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SERVICE TYPE",
                        style: GoogleFonts.jockeyOne(
                          color: const Color.fromARGB(255, 97, 92, 92),
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        detail.vehicle.toString(),
                        style: GoogleFonts.jockeyOne(
                          color: const Color.fromARGB(255, 97, 92, 92),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "COST",
                        style: GoogleFonts.jockeyOne(
                          color: const Color.fromARGB(255, 97, 92, 92),
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "RS. 15000",
                        style: GoogleFonts.jockeyOne(
                          color: const Color.fromARGB(255, 97, 92, 92),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "NOTE",
                        style: GoogleFonts.jockeyOne(
                          color: const Color.fromARGB(255, 97, 92, 92),
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "_________________________________",
                        style: GoogleFonts.jockeyOne(
                          color: const Color.fromARGB(255, 97, 92, 92),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: width * 0.05),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder:
                              (context) => AlertDialog(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                title: Text(
                                  "Confirm Booking",
                                  style: GoogleFonts.jockeyOne(
                                    color: Colors.amber,
                                    fontSize: 22,
                                  ),
                                ),
                                content: Text(
                                  "Are you sure you want to confirm and proceed?",
                                  style: GoogleFonts.jockeyOne(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(
                                        context,
                                      ).pop(); // Dismiss the alert
                                      Storefunction().storedata(
                                        detail.mechanic.toString(),
                                        detail.typeofservice.toString(),
                                        detail.dateTime.toString().split(
                                          ' ',
                                        )[0],
                                        detail.timeslot.toString(),
                                        detail.vehicle.toString(),
                                        "Rs. 15000",
                                      );

                                      Navigator.pushReplacementNamed(
                                        context,
                                        '/nav',
                                      );
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
                        "CONFIRM",
                        style: GoogleFonts.jockeyOne(
                          color: Colors.black,
                          fontSize: 25,
                        ),
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
