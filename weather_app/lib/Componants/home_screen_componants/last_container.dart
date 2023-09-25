import 'package:flutter/material.dart';
import 'package:weather_app/utills/colos.dart';

class last_container extends StatefulWidget {
  last_container({Key? key}) : super(key: key);

  @override
  State<last_container> createState() => _last_containerState();
}

class _last_containerState extends State<last_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 325 / 640,
      decoration: BoxDecoration(
        borderRadius:const BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        //  color: Colors.red,
        color: Rang.homescreen_last_container_color,
        image:const DecorationImage(image: AssetImage("assets/imgs/Rectangle.png"),fit: BoxFit.cover)
      ),
      child: Column(
        children: [
          ////divider
          Padding(
            padding: const EdgeInsets.only(left: 150, right: 150, top: 5),
            child: Container(
              width: 48,
              height: 5,
              decoration: BoxDecoration(
                //color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                color:const Color.fromARGB(77, 235, 7, 7),
              ),
            ),
          ),

          ///text row
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 32, left: 32),
            child: Row(
              children: [
                Text(
                  "Hourly Forecast",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Rang.homescreen_lastr_text_color,
                  ),
                ),
              const  Spacer(),
                Text(
                  "Weekly Forecast",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Rang.homescreen_lastr_text_color,
                  ),
                ),
              ],
            ),
          ),
       
       /////horizantal listviewbuilder
       Container(
        margin:const EdgeInsets.only(top: 20,left: 20) ,
         width:MediaQuery.sizeOf(context).width,
                height: 150,
                 decoration:const BoxDecoration(
                //color: Colors.green
              ),
         child: ListView.builder(
          itemCount: 10, 
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: ( BuildContext ,index){
            return Padding(
              padding: const EdgeInsets.only(left: 12,right: 12),
              child: Container(
              //  margin: EdgeInsets.only(left: 8,bottom: 16,top: 16,right: 16),
               width: 65,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  //color: Colors.red,
                  color: Color(0x3348319D),
                    boxShadow:const [
          BoxShadow(
            color: Color(0x40000000), // Shadow color
            spreadRadius: 5, // Spread radius
            blurRadius: 10, // Blur radius
            
            offset: Offset(0, 3), // Offset to control the shadow's position
          ),
        ],
                ),
                child:Padding(
                  padding: const EdgeInsets.only(left: 8,bottom: 16,top: 16,right: 16),
                  child: Column(
                    children: [
                      ///TIME
                   const   Text("12 AM",style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),),
                      /////cloud icon
                 const     SizedBox(height: 16,),
                      Container(
                        height: 32, 
                        width: 32, 
                        decoration:const BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/imgs/Moon cloud mid rain.png"))
                        ),
                      ),
                      ///percent txt
                    const   Text("30%",style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF40CBD8),
                      ),),

                   const    SizedBox(height: 15,),

                       ///deegree txt
                    const   Text("19°",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),),
                    ],
                  ),
                )
              ),
            );
          }),
       )
       
        ],
      ),
    );
  }
}
