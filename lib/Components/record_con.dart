import 'package:flutter/material.dart';

class MyRecordContainer extends StatelessWidget {
  final String name;
  final String hours;


  const MyRecordContainer({
    super.key,
    required this.name,
    required this.hours});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 325,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            // Border color
            width: 1.0, // Border width
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const SizedBox(width: 50,),
                        Text(hours, style: TextStyle(fontFamily: 'Poppins', fontSize: 35, fontWeight: FontWeight.bold, color: Colors.green),)
                      ],
                    ),
                    const SizedBox(width: 12,),
                    Column(
                      children: [
                        Text('|     ' + name, style: TextStyle(fontFamily: 'Poppins', fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}