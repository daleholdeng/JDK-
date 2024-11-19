import 'package:flutter/material.dart';
import 'package:jdk_tracker/Components/FilterBtn.dart';
import 'package:jdk_tracker/Components/MySearchField.dart';
import 'package:jdk_tracker/Pages/home_page.dart';

import '../Components/record_con.dart';
import '../Components/record_con2.dart';

class ViewPage extends StatefulWidget {


  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  final searchController = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
          'Viewing Records',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF009FE0),
              fontSize: 30,
              fontFamily: 'Poppins'
          ),
        ),
        //Buttons
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.power_settings_new_rounded,
                color: Color(0xff0051a0), size: 35),
            onPressed: () {

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
          colors: [
            Color(0xffFFFFFF),
            Color(0xff009fe0),
            Color(0xff0051a0),
          ],
        ),
        ),
      child: Column(
        children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 40,),
                      MySearchField(
                          onTap: (){

                          },
                          controller: searchController,
                          focusNode: focusNode),
                    ],
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    children: [
                      MyFilterBtn(),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('Hours ', style: TextStyle(fontFamily: 'Poppins', fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      Text('|                           Names ', style: TextStyle(fontFamily: 'Poppins', fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  MyRecordContainer(
                      name: "Dale Holden Garcia",
                      hours: "8")
                ],
              ),
            ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                MyRecordContainer(
                    name: "Jericho Kyle Gan",
                    hours: "8")
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                MyRecordContainer2(
                    name: "John Renzy Biron",
                    hours: "7")
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                MyRecordContainer(
                    name: "Jufel Ellema",
                    hours: "8")
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                MyRecordContainer2(
                    name: "JV Kay Reyes",
                    hours: "6")
              ],
            ),
          ),


          ],
        ),
      ),
    );
  }
}
