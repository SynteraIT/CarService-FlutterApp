import 'package:car_service/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class typeofservices extends StatefulWidget {
  const typeofservices({super.key});

  @override
  State<typeofservices> createState() => _typeofservicesState();
}

class _typeofservicesState extends State<typeofservices> {
  final List<Map<String, String>> services = [
    {"name": "Oil Change"},
    {"name": "Brake Inspection & Replacement"},
    {"name": "Tire Rotation & Alignment"},
    {"name": "Battery Check & Replacement"},
    {"name": "Headlight Polishing or Replacement"},
    {"name": "Air Filter Replacement"},
    {"name": "AC System Service"},
    {"name": "Coolant Flush"},
    {"name": "Transmission Service"},
    {"name": "Car Wash & Detailing"},
    {"name": "Engine Diagnostics"},
    {"name": "Windshield Wiper Replacement"},
    {"name": "Suspension Check & Repair"},
    {"name": "Exhaust System Check"},
  ];

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final filteredServices =
        services
            .where(
              (s) =>
                  s["name"]!.toLowerCase().contains(searchQuery.toLowerCase()),
            )
            .toList();
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Search Vehicle',

                  labelStyle: GoogleFonts.jockeyOne(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.amber, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: filteredServices.length,
                itemBuilder: (context, index) {
                  final service = filteredServices[index];
                  return Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(94, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "${service['name']}",
                            style: GoogleFonts.jockeyOne(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            detail.settypeofservice(service['name']!);
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
                            "ADD",
                            style: GoogleFonts.jockeyOne(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
