import 'package:car_service/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  final List<Map<String, String>> vehicleTypes = [
    {"name": "Sedan", "desc": "Four-door vehicle with a separate trunk."},
    {
      "name": "Hatchback",
      "desc": "Compact car with a rear door that swings upward.",
    },
    {"name": "SUV", "desc": "Sport Utility Vehicle, higher ground clearance."},
    {"name": "Crossover (CUV)", "desc": "Mix between SUV and passenger car."},
    {"name": "Coupe", "desc": "Two-door sporty car. Good comfertable"},
    {"name": "Convertible", "desc": "Car with a roof that folds down."},
    {"name": "Pickup Truck", "desc": "Truck with open cargo space."},
    {"name": "Minivan / MPV", "desc": "Family vehicle with sliding doors."},
    {"name": "Wagon / Estate", "desc": "Extended rear cargo space."},
    {"name": "Van", "desc": "Boxy vehicle for passengers or cargo."},
    {"name": "Roadster", "desc": "Two-seat convertible sports car."},
    {"name": "Sports Car", "desc": "High-performance vehicle. super speed"},
    {"name": "Supercar", "desc": "Top-tier sports car with extreme speed."},
    {"name": "Microcar", "desc": "Very small, compact city vehicle."},
    {"name": "Off-Roader", "desc": "Designed for rough terrain driving."},
    {
      "name": "Limousine",
      "desc": "Luxury extended sedan with greate comfertable.",
    },
    {"name": "Electric Vehicle (EV)", "desc": "Runs on electric power only."},
    {"name": "Hybrid", "desc": "Uses both fuel and electric power."},
    {"name": "Diesel", "desc": "Runs on diesel fuel engine."},
    {"name": "Station Wagon", "desc": "Car with full-height cargo space."},
  ];

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final filteredVehicles =
        vehicleTypes
            .where(
              (v) =>
                  v["name"]!.toLowerCase().contains(searchQuery.toLowerCase()),
            )
            .toList();

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
                itemCount: filteredVehicles.length,
                itemBuilder: (context, index) {
                  final vehicle = filteredVehicles[index];
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
                            "${vehicle['name']}: ${vehicle['desc']}",
                            style: GoogleFonts.jockeyOne(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            detail.setVehicle(vehicle['name']!);
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
