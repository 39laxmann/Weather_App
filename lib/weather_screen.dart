import 'dart:ui';
import 'package:flutter/material.dart';
import 'hourly_forecast_item.dart';
import 'additional_info_item.dart';

class WeatherScreen extends StatelessWidget{
  const WeatherScreen({super.key});
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Text("Weather App",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          letterSpacing: 3.2,
          wordSpacing: 9.5,
          


        ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            debugPrint("Refresh button clicked by the user");
          },
           icon: Icon(Icons.refresh),
           ),
  

        ],
        
      ),
      body: Padding(padding: EdgeInsets.all(18.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //main card
          SizedBox(
            width: double.infinity ,
            
          child: Card(
            elevation: 9,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
             
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 3.4,
                  sigmaY: 3.4,
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      
                      Text("300° F",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      
                      Icon(Icons.cloud,
                      size: 65,
                      ),
                      
                      Text("Rain",
                      style: TextStyle(
                        fontSize: 18
                      ),
                      )
                    ],
                    
                    ),
                ),
              ),
            ),
          
          ),
          ),


          Padding(padding: EdgeInsets.only(
            top: 20, bottom: 20,
          ),
          child: Text("Weather Forecast",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,


          ),
          ),
          ),


          //weather forecast card
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                //Card 1 for weather forecast
                HourlyForecast(hourlyTime: "08:00",iconName: Icons.sunny, tempr: "320.38",),

                SizedBox(width: 5,),
            
                //Card 2 for weather forecast
                HourlyForecast(hourlyTime: "09:00",iconName: Icons.cloud, tempr: "320.38",),
                SizedBox(width: 5,),

                

                //Card 3 for weather forecast
                HourlyForecast(hourlyTime: "10:00",iconName: Icons.water_drop, tempr: "320.38",),
              SizedBox(width: 5,),

                //Card 4 for weather forecast
                HourlyForecast(hourlyTime: "11:00",iconName: Icons.cloudy_snowing,tempr: "320.38",),
              SizedBox(width: 5,),
            
                //Card 5 for weather forecast
                HourlyForecast(hourlyTime: "12:00",iconName: Icons.wb_sunny_sharp, tempr: "320.38",),
               
              ],
              ),
          ),

         



          //Additional Information card
         
          const SizedBox(
            height: 20
          ),
          
          Text("Additional Information",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            

          ) ,
          ),
          const SizedBox(
            height: 30
          ),
          
          const SizedBox(
            height: 16,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            
            children: [
              AdditionInfoItem(icon: Icons.water_drop, textforIcon: "Humidity", value: 81,),
              AdditionInfoItem(icon: Icons.air, textforIcon: "Wind Speed", value: 10.2,),
              AdditionInfoItem(icon: Icons.beach_access, textforIcon: "Pressure",value: 2.8,)

              
            ],
          )
        

        ],
      ) 
    )
    );
  }

}


