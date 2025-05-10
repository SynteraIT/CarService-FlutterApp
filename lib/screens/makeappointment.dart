import 'package:car_service/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class makeappointment extends StatefulWidget {
  const makeappointment({super.key});

  @override
  State<makeappointment> createState() => _makeappointmentState();
}

class _makeappointmentState extends State<makeappointment> {
  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 220, 156),
        title: Text(
          "MAKE APPOINTMENT",
          style: GoogleFonts.jockeyOne(color: Colors.black, fontSize: 30),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(94, 0, 0, 0)),
              ),
              height: 70,
              child: InkWell(
                onTap: () async {
                  final DateTime? dateTime = await showDatePicker(
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000),
                    builder:
                        (context, child) => Theme(
                          data: ThemeData.light().copyWith(
                            colorScheme: ColorScheme.light(
                              primary: Colors.amber,
                            ),
                          ),
                          child: child!,
                        ),
                  );

                  if (dateTime != null) {
                    setState(() {
                      selectedDate = dateTime;
                      detail.setdatetime(selectedDate);
                    });
                  }
                },
                child: Row(
                  children: [
                    SizedBox(width: width * 0.03),
                    Icon(Icons.date_range, color: Colors.amber, size: 40),
                    SizedBox(width: width * 0.03),
                    Text(
                      "DATE SELECT",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.amber,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "PICK A TIME SLOT",
              style: GoogleFonts.jockeyOne(color: Colors.black, fontSize: 30),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    detail.settimeslot("9 - 10");
                    Navigator.pushNamed(context, '/mechanic');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,

                    minimumSize: Size(30, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    "9 - 10",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    detail.settimeslot("10- 11");
                    Navigator.pushNamed(context, '/mechanic');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,

                    minimumSize: Size(30, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    "10- 11",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    detail.settimeslot("11- 12");
                    Navigator.pushNamed(context, '/mechanic');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,

                    minimumSize: Size(30, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    "11 - 12",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    detail.settimeslot("12- 13");
                    Navigator.pushNamed(context, '/mechanic');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,

                    minimumSize: Size(30, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    "12 - 13",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    detail.settimeslot("13- 14");
                    Navigator.pushNamed(context, '/mechanic');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,

                    minimumSize: Size(30, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    "13- 14",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    detail.settimeslot("15- 16");
                    Navigator.pushNamed(context, '/mechanic');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,

                    minimumSize: Size(30, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    "15 - 16",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    detail.settimeslot("16- 17");
                    Navigator.pushNamed(context, '/mechanic');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,

                    minimumSize: Size(30, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    "16 - 17",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    detail.settimeslot("17- 18");
                    Navigator.pushNamed(context, '/mechanic');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,

                    minimumSize: Size(30, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    "17- 18",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    detail.settimeslot("18- 19");
                    Navigator.pushNamed(context, '/mechanic');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,

                    minimumSize: Size(30, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    "18 - 19",
                    style: GoogleFonts.jockeyOne(
                      color: Colors.black,
                      fontSize: 20,
                    ),
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
