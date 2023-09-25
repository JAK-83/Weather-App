import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/utills/colos.dart';
class central_text extends StatefulWidget {
  central_text({Key? key}) : super(key: key);

  @override
  State<central_text> createState() => _central_textState();
}

class _central_textState extends State<central_text> {
  @override
  Widget build(BuildContext context) {
    return  Container(
            margin:const EdgeInsets.only(left: 110,right: 120,top: 50),
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height* 165 / 640, 
            decoration:const BoxDecoration(
              //color: Colors.red
            ),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Karachi",style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  color: Rang.homescreen_text_color,
                ),),
               //
               Text("19°",style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 90,
                  color: Rang.homescreen_text_color,
                ),),
                ///
                Text("Mostly Clear",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Rang.homescreen_most_clear_text_color,
                ),),
                  SizedBox(height: 3,),
                ////
                Text("H:24°   L:18°",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Rang.homescreen_text_color,
                ),),
              ],
            ),
           );
  }
}