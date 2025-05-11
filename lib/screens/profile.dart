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
      print("Error fetching user data: $e");
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Side Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle tap
                Navigator.pop(context);
              },
            ),
          ],
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
}
