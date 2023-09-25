import 'package:flutter/material.dart';
import 'package:weather_app/Componants/weather_screen_compnant/data_container.dart';
import 'package:weather_app/Componants/weather_screen_compnant/heading_row.dart';
import 'package:weather_app/database/local_weather_api.dart';
class wether_screen extends StatefulWidget {
  wether_screen({Key? key}) : super(key: key);

  @override
  State<wether_screen> createState() => _wether_screenState();
}

class _wether_screenState extends State<wether_screen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 67, 109),
      
      body: ListView(
        children: [
      
          ////heading row
         heading_row(),
         
         ///search barr
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16,top: 17),
            child: Container(
              padding:const EdgeInsets.only(left: 8,right: 8),
              height: 36, 
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20)
                
              ),
              child:const Row(
                children: [
                  Icon(Icons.search),
                  Text("Search for city"
                  ,style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ],
              ),
            ),
          ),
      
      
         ////data container
          Padding(
            padding: const EdgeInsets.only(left: 28,right: 28,top: 10),
            child: Container(
              height: MediaQuery.sizeOf(context).height, 
              width: MediaQuery.sizeOf(context).width,
              //color: Colors.red,
              child: // data container
          ListView.builder(
            
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(), // Disable scrolling
            itemCount: weather_data_api.my_weather_api.length,
            itemBuilder: (context, index) {
              final weatherData = weather_data_api.my_weather_api[index];
              final countryName = weatherData.keys.first;
              final cityData = weatherData[countryName]?["cities"];
              if (cityData != null) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Text(
                    //     countryName,
                    //     style:const TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 18,
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),
                    ListView.builder(
                     // physics: NeverScrollableScrollPhysics(), // Disable scrolling
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: cityData.length,
                      itemBuilder: (context, cityIndex) {
                        final cityName = cityData.keys.toList()[cityIndex];
                        final cityInfo = cityData[cityName];
                        if (cityInfo != null) {
                          return data_container(
                            iconn:cityInfo["icon"],
                            degree: cityInfo["Degree"],
                            H: cityInfo["H"],
                            l: cityInfo["L"],
                            city: cityInfo["city"],
                            country: countryName,
                          );
                        }
                        return SizedBox();
                      },
                    ),
                  ],
                );
              }
              return SizedBox();
            },
          ),
            ),
          ),
        ],
      ),
    );
  }
}



