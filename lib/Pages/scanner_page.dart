/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  String QrResult = 'Scanned Data will appear here';
  Future<void> scanQR()async{
    try{
      final QrCode = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.QR);
      if(!mounted)return;
      setState(() {
        this.QrResult = QrCode.toString();
      });

    }on PlatformException{
      QrResult = 'Failed to read QR Code';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: Color(0xffFFFFFF)
          ),
        ),
        toolbarHeight: 70,
        title: Text(
          'Qr Scanner',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF009FE0),
              fontSize: 30,
              fontFamily: 'Poppins'
          ),
        ),
        centerTitle: true,
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

                SizedBox(height: 30,),
                Text('$QrResult', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 30
                ),),
                SizedBox(height: 30,),
                ElevatedButton(
                    onPressed: scanQR,
                    child: Text('Scan Code',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 30
                      ),
                    ),
                ),

              ],
            ),
        ),
      ),
    );
  }
}
*/
