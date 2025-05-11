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
      print("Error fetching service data: $e");
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
}
