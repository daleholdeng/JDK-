import 'package:flutter/material.dart';

class MyTextField2 extends StatelessWidget {
  final String hintText;

  const MyTextField2({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 50,
        width: 320,
        child: TextField(
          enabled: false, // Make the text field non-editable
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white), // Optional border color
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.white,
            filled: true,

            hintText: hintText,
            hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 25
            ),
          ),
        ),
      ),
    );
  }
}