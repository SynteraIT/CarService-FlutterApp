import 'package:car_service/screens/history.dart';
import 'package:car_service/screens/home.dart';
import 'package:car_service/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navigationpages extends StatefulWidget {
  const Navigationpages({super.key});

  @override
  State<Navigationpages> createState() => _NavigationpagesState();
}

class _NavigationpagesState extends State<Navigationpages> {
  int myIndex = 0;
  List<Widget> widgetList = [Home(), History(), profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.jockeyOne(
          color: Colors.orange,
          fontSize: 20,
        ),
        selectedItemColor: Colors.orange,
        unselectedLabelStyle: GoogleFonts.jockeyOne(
          color: Colors.black,
          fontSize: 20,
        ),
        unselectedItemColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 238, 220, 156),
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'HIstory'),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
