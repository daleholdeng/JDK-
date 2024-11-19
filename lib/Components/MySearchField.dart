import 'package:flutter/material.dart';

class MySearchField extends StatelessWidget {
  final Function()? onTap;
  final TextEditingController controller;
  final FocusNode focusNode;

  const MySearchField({
    required this.onTap,
    required this.controller,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 90,
        width: 250,
        child: TextField(
          focusNode: focusNode,
          controller: controller,
          decoration: InputDecoration(
            hintText: "Search",
            fillColor: Color(0xfffafffb),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            suffixIcon: GestureDetector(
              onTap: onTap,
              child: Icon(Icons.search, size: 30,color: Colors.black,),
            ),
          ),
        ),
      ),
    );
  }
}