import 'package:flutter/material.dart';
import 'package:weather_app/Componants/home_screen_componants/bg_pic.dart';
import 'package:weather_app/Componants/home_screen_componants/central_text.dart';
import 'package:weather_app/Componants/home_screen_componants/house_pic.dart';
import 'package:weather_app/Componants/home_screen_componants/last_container.dart';
class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
           /////bg pic
         bg_pic(),
          
          ////home png
          house_pic(),

           //////central text
           central_text(),
           /////////
           
           Positioned(
            top: 440,
             child: last_container(),
           ),



        ],
      ),

//////////navbarr

  //  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  //  bottomNavigationBar: AnimatedBottomNavigationBar(
  //     icons:iconList,
      
  //     activeIndex: _bottomNavIndex,
  //     gapLocation: GapLocation.center,
  //     notchSmoothness: NotchSmoothness.verySmoothEdge,
  //     leftCornerRadius: 32,
  //     rightCornerRadius: 32,
  //     onTap: (index) => setState(() => _bottomNavIndex = screens[index]),
  //     //other params
  //  ),


    );
  }
}