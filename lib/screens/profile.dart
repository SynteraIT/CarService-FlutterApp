import 'dart:developer';

import 'package:car_service/auth/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  Future<Map<String, dynamic>?> getUserData(String uid) async {
    try {
      final userDoc =
          await FirebaseFirestore.instance
              .collection('users') // Replace with your collection name
              .doc(uid) // Use email as the document ID
              .get();

      if (userDoc.exists) {
        return userDoc.data();
      }
    } catch (e) {
      log("Error fetching user data: $e");
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 220, 156),
        title: Text(
          "PROFILE INFORMATION",
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

      body: FutureBuilder<Map<String, dynamic>?>(
        future: getUserData(auth.currentUser!.uid), // Fetch user data
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.amber),
            );
          }

          if (snapshot.hasError || !snapshot.hasData) {
            return Center(
              child: Text(
                "Error loading user data",
                style: GoogleFonts.jockeyOne(color: Colors.amber, fontSize: 20),
              ),
            );
          }

          final userData = snapshot.data!;
          final username = userData['username'] ?? "No username available";
          final phoneNumber = userData['phone'] ?? "No phone number available";

          return Center(
            child: Column(
              children: [
                SizedBox(height: width * 0.05),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(94, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  width: width * 0.95,
                  height: 450,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "USER DETAILS",
                        style: GoogleFonts.jockeyOne(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.supervised_user_circle,
                            size: 50,
                            color: Colors.amber,
                          ),

                          Text(
                            "  Details  ____________________",
                            style: GoogleFonts.jockeyOne(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 6, // left space
                        endIndent: 10, // right space
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "USER NAME",
                            style: GoogleFonts.jockeyOne(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            username,
                            style: GoogleFonts.jockeyOne(
                              color: const Color.fromARGB(255, 97, 92, 92),
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: width * 0.05),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: GoogleFonts.jockeyOne(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            auth.currentUser!.email.toString(),
                            style: GoogleFonts.jockeyOne(
                              color: const Color.fromARGB(255, 97, 92, 92),
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: width * 0.05),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PHONE",
                            style: GoogleFonts.jockeyOne(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            phoneNumber,
                            style: GoogleFonts.jockeyOne(
                              color: const Color.fromARGB(255, 97, 92, 92),
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
