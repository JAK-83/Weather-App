import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class heading_row extends StatefulWidget {
  heading_row({Key? key}) : super(key: key);

  @override
  State<heading_row> createState() => _heading_rowState();
}

class _heading_rowState extends State<heading_row> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_left,
            color: Colors.white,
          ),
          const Text(
            "Weather",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          const Spacer(),
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
                // color: Colors.red ,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, strokeAlign: .4)),
            child: const Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
