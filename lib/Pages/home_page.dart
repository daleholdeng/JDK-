import 'package:flutter/material.dart';
import '../Pages/registration_page.dart';
import '../Components/MyButton.dart';
import 'generateqr_page.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  // gradient for text
  final gradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xffFFFFFF),
      Color(0xff009fe0),
      Color(0xff0051a0)
    ],
  );

  @override
  Widget build(BuildContext context) {
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
            'Launchpad Timesheet Tracker',
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
                const SizedBox(height: 250,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      MyButton(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => RegistrationPage()));
                          },
                          color: Colors.white,
                          width: 300,
                          height: 50,
                          btnHint: 'Register'),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      MyButton(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => QRGeneratorPage()));
                          },
                          color: Colors.white,
                          width: 300,
                          height: 50,
                          btnHint: 'Generate QR Code'),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      MyButton(
                          onTap: (){
                            /*Navigator.push(context,
                                MaterialPageRoute(builder: (context) => QRscanPage()));*/
                          },
                          color: Colors.white,
                          width: 300,
                          height: 50,
                          btnHint: 'QR Code Scanner'),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      MyButton(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                          color: Colors.white,
                          width: 300,
                          height: 50,
                          btnHint: 'Login'),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}