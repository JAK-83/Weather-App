import 'package:flutter/cupertino.dart';
class house_pic extends StatefulWidget {
  house_pic({Key? key}) : super(key: key);

  @override
  State<house_pic> createState() => _house_picState();
}

class _house_picState extends State<house_pic> {
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(top: 250,left: 70,right: 40),
            height: MediaQuery.sizeOf(context).height* 190 / 640,
            width: MediaQuery.sizeOf(context).width* 190 / 360,
            decoration: BoxDecoration(
               //   borderRadius: BorderRadius.only(topLeft: Radius.circular(100),topRight: Radius.circular(100)),
              //  color: Colors.red,
              borderRadius: BorderRadius.circular(50),
               image: DecorationImage(image: AssetImage("assets/imgs/House02.png"),fit:BoxFit.cover),
            ),
           )
          ;
  }
}