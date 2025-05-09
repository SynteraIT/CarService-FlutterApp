import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  final TextEditingController reusetexteditincontroller;
  final bool password;

  const textfield({
    super.key,
    required this.reusetexteditincontroller,
    required this.password,
  });

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.8,
      child: TextField(
        controller: widget.reusetexteditincontroller,
        obscureText: widget.password ? _obscureText : false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 162, 167, 162),
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: const Color(0xFF062920), width: 2),
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
