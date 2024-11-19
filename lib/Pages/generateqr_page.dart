import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:timesheet_tracker/Components/MyTextField.dart';

class QRGeneratorPage extends StatefulWidget {
  const QRGeneratorPage({super.key});

  @override
  State<QRGeneratorPage> createState() => _QRGeneratorPageState();
}

class _QRGeneratorPageState extends State<QRGeneratorPage> {
  final GlobalKey globalKey = GlobalKey();
  String qrData = "";

  @override
  Widget build(BuildContext context) {
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
          'QR Code Generator', // Changed title
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF009FE0),
              fontSize: 30,
              fontFamily: 'Poppins'
          ),
        ),
        centerTitle: true,
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
            const SizedBox(height: 30,),
            RepaintBoundary(
              key: globalKey,
              child: Container(
                color: Colors.white,
                child: Center(
                  child: qrData.isEmpty // Removed space after isEmpty
                      ? Text(
                    "Please Your Fullname Data to Generate",
                    style:  TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                  ) : QrImageView(
                    data: qrData,
                    version: QrVersions.auto,
                    size: 400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your Full Name ",
                  border: OutlineInputBorder()
                ),
                onChanged: (value){
                  setState(() {
                    qrData = value;
                  });
                },
              )
            )
          ],
        ),
      ),
    );
  }
}
