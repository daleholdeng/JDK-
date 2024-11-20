import 'package:flutter/material.dart';
import 'package:jdk_tracker/Components/MyTextField2.dart';

import '../Components/MyButton.dart';
import '../Pages/ViewPage.dart';

class ApprovalPage extends StatefulWidget {
  const ApprovalPage({super.key});

  @override
  State<ApprovalPage> createState() => _ApprovalPageState();
}

class _ApprovalPageState extends State<ApprovalPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF)
            ),
          ),
          toolbarHeight: 70,
          title: Text(
            'Approval Page',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF009FE0),
                fontSize: 25,
                fontFamily: 'Poppins'
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff0051a0),
                  Color(0xff009fe0),
                  Color(0xffFFFFFF),

                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(width: screenWidth *1,),
                const SizedBox(height: 50,),
                Text('Dale Holden Garcia', style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Text('Hours Completed', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    children: [
                      MyTextField2(hintText: '8')
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Text('Date', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    children: [
                      MyTextField2(hintText: 'November 20 2024')
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Text('Time in', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    children: [
                      MyTextField2(hintText: '7:47.00')
                    ],
                  ),
                ),

                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Text('Time out', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    children: [
                      MyTextField2(hintText: '17:00.00')
                    ],
                  ),
                ),

                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Text('Accomplishment', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    children: [
                      MyTextField2(hintText: 'APC Workshop')
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                MyButton(
                    color: Colors.green,
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ViewPage()));
                    },
                    width: 150,
                    height: 50,
                    btnHint: "Approve"
                ),
                const SizedBox(height: 10,),
                MyButton(
                    color: Colors.redAccent,
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ViewPage()));
                    },
                    width: 150,
                    height: 50,
                    btnHint: "Reject"
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
