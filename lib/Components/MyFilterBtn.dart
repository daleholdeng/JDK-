import 'package:flutter/material.dart';

class MyFilterBtn extends StatelessWidget {


  const MyFilterBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60, // Adjust the size as needed
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,

      ),

      child: IconButton(
        onPressed: () {
          // Handle filter button press
          print('Filter button pressed');
        },
        icon: const Icon(Icons.filter_list),
        color: Colors.black, // Icon color
        iconSize: 30, // Remove minimum size constraint
      ),

    );
  }
}