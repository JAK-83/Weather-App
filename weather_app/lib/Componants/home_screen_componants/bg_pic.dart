import 'package:flutter/cupertino.dart';
class bg_pic extends StatefulWidget {
  bg_pic({Key? key}) : super(key: key);

  @override
  State<bg_pic> createState() => _bg_picState();
}

class _bg_picState extends State<bg_pic> {
  @override
  Widget build(BuildContext context) {
    return   Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage("assets/imgs/bg.png"),fit:BoxFit.cover),
            ),
           );
  }
}