import 'package:flutter/material.dart';
class data_container extends StatefulWidget {
  final int degree;
  final int H;
  final int l;
  final String city;
  final String country;
   final String iconn;
  data_container({Key? key,
   required this.degree,
    required this.H, 
    required this.l, 
    required this.city,
     required this.country, required this.iconn}) : super(key: key);

  @override
  State<data_container> createState() => _data_containerState();
}

class _data_containerState extends State<data_container> {
  @override
  Widget build(BuildContext context) {
    return   Container(     ///stack parent contianer
        //  margin: EdgeInsets.only(left: 28,top: 10,right: 28),
          width: 342, 
          height: 184, 
          decoration:const BoxDecoration(
            
          ),
          child: Stack(
            children: [
              ////bg image 
              Container(
          width: 342, 
          height: 184, 
          decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/imgs/RRectangle.png")),
          ),
         ),
            
            ////// icon
            Positioned(
              top: 10,
              left: 190,
              child: Container(
              height: 100, 
              width: 100, 
              decoration: BoxDecoration(
               // color: Colors.red,
                image: DecorationImage(image: AssetImage(widget.iconn),fit: BoxFit.cover)
              ),
              
                         
                        ),
            ),
            

            ////
            Positioned(
              left: 20,
              top: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, 
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                Text("${widget.degree.toString()}°",style:const TextStyle(
                color: Colors.white,
                fontSize: 55,
                fontWeight: FontWeight.w400
              ),),
            const  SizedBox(height: 20,),
                  ////
              Text("H:${widget.H.toString()}° L:${widget.l.toString()}°",style:const TextStyle(
                color: Color(0x99EBEBF5),
                fontSize: 13,
                fontWeight: FontWeight.w400
              ),),
          const  SizedBox(height: 10,),
               ////
              Row(
                children: [
                  Icon(Icons.location_on_outlined,color: Colors.white,),
                  Text("${widget.city}, ${widget.country}",style:const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400
                  ),),
                  
                ],
              ),
              ],
                      ),
            ),
            ],
            
          ),
         );
  }
}