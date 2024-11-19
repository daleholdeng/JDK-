import 'package:flutter/material.dart';
import 'package:jdk_tracker/Pages/scanner_page.dart';

import 'Pages/home_page.dart';
import 'Pages/qrscan_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/login_page': (context) => HomePage(),
      },
    );
  }
}