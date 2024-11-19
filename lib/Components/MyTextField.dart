import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final FocusNode focusNode;
  final controller;
  final String hintText;
  final bool obscureText;
  final textfieldIcon;
  final double? height; // Optional height for the container
  final double? width;  // Optional width for the container

  const MyTextField({
    super.key,
    required this.focusNode,
    required this.controller,
    required this.hintText,
    required this.textfieldIcon,
    required this.obscureText,
    this.height, // Optional constructor parameter for height
    this.width,  // Optional constructor parameter for width
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: height, // Set the height if provided
        width: width,  // Set the width if provided
        child: TextField(
          focusNode: focusNode,
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: Icon(textfieldIcon, color: Colors.black,),
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
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}