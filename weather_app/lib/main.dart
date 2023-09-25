import 'package:flutter/material.dart';
import 'package:weather_app/sceeens/bottom_nav_bar.dart';
// ignore: unused_import
import 'package:weather_app/sceeens/homeScreen.dart';
// ignore: unused_import
import 'package:weather_app/sceeens/wether_screen.dart';

void main() {
  runApp( weatherApp());
}
class weatherApp extends StatefulWidget {
  weatherApp({Key? key}) : super(key: key);

  @override
  State<weatherApp> createState() => _weatherAppState();
}

class _weatherAppState extends State<weatherApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,

     home: //wether_screen(),
     bottom_nav_bar(),
      //homeScreen(),

    );
  }
}