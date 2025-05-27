import 'dart:ui';

import 'package:flutter/material.dart';

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
                HourlyForecast(),

                SizedBox(width: 5,),
            
                //Card 2 for weather forecast
                HourlyForecast(),
                SizedBox(width: 5,),

                

                //Card 3 for weather forecast
                HourlyForecast(),
              SizedBox(width: 5,),

                //Card 4 for weather forecast
                HourlyForecast(),
              SizedBox(width: 5,),
            
                //Card 5 for weather forecast
                HourlyForecast(),
               
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
          )
        

        ],
      ) 
    )
    );
  }

}


class HourlyForecast extends StatelessWidget{
  const HourlyForecast({super.key});
  @override
  Widget build(BuildContext context){
    return SizedBox(
                  width: 120,
                  height: 132,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          
                          Text("09:00",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          const SizedBox(height: 6,),
                          Icon(Icons.water_drop_outlined,
                          color: Colors.white,
                          size: 32,),
                          const SizedBox(height: 5,),
                          Text("301.73"),
                        ],
                      ),
                    ),
                  ),
                );
                
  }
}