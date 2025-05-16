import 'dart:developer';

import 'package:car_service/auth/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatelessWidget {
  const History({super.key});

  Future<List<Map<String, dynamic>>> getUserServiceData() async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) return [];

      final querySnapshot =
          await FirebaseFirestore.instance
              .collection('servicedata')
              .where('email', isEqualTo: user.email)
              .get();

      return querySnapshot.docs.map((doc) => doc.data()).toList();
    } catch (e) {
      log("Error fetching service data: $e");
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 220, 156),
        title: Text(
          "SERVICE DETAILS",
          style: GoogleFonts.jockeyOne(color: Colors.black, fontSize: 30),
        ),
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
        ),
      ),

      drawer: Drawer(
        backgroundColor: Color(0xFFFFF2B2), // Light yellow background
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Close button (top-right)
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 4,
                indent: 10, // left space
                endIndent: 10, // right space
              ),
              // CAR HUB row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "CAR",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.directions_car, size: 40),
                    SizedBox(width: 10),
                    Text(
                      "HUB",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 4,
                indent: 10, // left space
                endIndent: 10, // right space
              ),
              // Drawer items
              drawerItem(
                icon: Icons.add_circle_outline,
                text: "Add Car",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              drawerItem(
                icon: Icons.info_outline,
                text: "About Us",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              drawerItem(
                icon: Icons.privacy_tip_outlined,
                text: "Privacy & Policies",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Spacer(),
              Divider(thickness: 1.2),
              drawerItem(
                icon: Icons.logout,
                text: "Log Out",
                onTap: () {
                  AuthService().signOut();
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),

      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: getUserServiceData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.amber),
            );
          }

          if (snapshot.hasError ||
              !snapshot.hasData ||
              snapshot.data!.isEmpty) {
            return Center(
              child: Text(
                "No service details found",
                style: GoogleFonts.jockeyOne(color: Colors.amber, fontSize: 20),
              ),
            );
          }

          final serviceData = snapshot.data!;
          return ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: serviceData.length,
            itemBuilder: (context, index) {
              final service = serviceData[index];
              return Container(
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Service Type: ${service['servicetype'] ?? 'N/A'}",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Mechanic: ${service['mechanic'] ?? 'N/A'}",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Vehicle: ${service['vehicle'] ?? 'N/A'}",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Date: ${service['date'] ?? 'N/A'}",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Time Slot: ${service['timeslot'] ?? 'N/A'}",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Cost: ${service['cost'] ?? 'N/A'}",
                      style: GoogleFonts.jockeyOne(
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget drawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Icon(icon, size: 40),
            SizedBox(width: 15),
            Text(
              text,
              style: GoogleFonts.jockeyOne(color: Colors.black, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
