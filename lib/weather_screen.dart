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


          Padding(padding: EdgeInsets.all(20),
          child: Text("Weather Forecast",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,


          ),
          ),
          ),


          //weather forecast card
          Row(
            children: [
              //Card 1 for weather forecast
              SizedBox(
                width: 100,
                height: 120,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text("9:00"),
                        Icon(Icons.cloud),
                        Text("301.91"),
                                    
                      ],
                                    
                                    
                                    
                    ),
                  ),
                ),
              ),

            ],
            ),

         



          //Additional Information card
         
          const SizedBox(
            height: 60
          ),
            
           Placeholder(
            fallbackHeight: 100,
          ),
          
        

        ],
      ) 
    )
    );
  }

}