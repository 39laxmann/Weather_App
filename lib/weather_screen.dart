
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/secret.dart';
import 'hourly_forecast_item.dart';
import 'additional_info_item.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';


class WeatherScreen extends StatefulWidget{
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  
  
  Future<Map<String, dynamic>> getCurrentWeather() async{
    try{

  String cityName = "Patan";
  final result = await http.get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$cityName,NP&APPID=$apiKey"));
  final data = jsonDecode(result.body);


  if(data["cod"]!= 200){
    throw "An error occured";
  }

 
  return data;
  
    }
    catch(e){
      throw e.toString();
    }
    
  }
  
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
      body:FutureBuilder(
        future: getCurrentWeather(),
        builder:(context, snapshot) {
          print(snapshot);
          print(snapshot.connectionState);
          print(snapshot.runtimeType);
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child:  CircularProgressIndicator.adaptive());
          }
          if(snapshot.hasError){
            return Text(snapshot.error.toString());
          }
          final data = snapshot.data!;
          final currentTemp =  data["main"]["temp"];  //api bata temperature ko data in kelvin
          final currentTempINCel = currentTemp-273.15;   //current temperature in celcius
          final curretSky = data["weather"][0]["main"];  //give current condition of sky , cloudy hoki , sunny hoki rainy
          final currentPressure = data['main']['pressure']; 
          final currentHumidity = data['main']['humidity'];
          final currentWindSpeed = data['wind']['speed'];
          final dateAndTime = data['dt'];




          return Padding(padding: EdgeInsets.all(18.0),
        
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
                        
                        Text("${currentTempINCel.toStringAsFixed(2)}° C",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        
                        Icon(
                          curretSky == 'Clouds' || curretSky == "Rain"?Icons.cloud:Icons.sunny,
                        size: 65,
                        ),
                        
                        Text(curretSky,
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
            child: Text("Hourly Forecast",
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
                AdditionInfoItem(icon: Icons.water_drop, textforIcon: "Humidity", value: currentHumidity.toDouble(),),
                AdditionInfoItem(icon: Icons.air, textforIcon: "Wind Speed", value: currentWindSpeed,),
                AdditionInfoItem(icon: Icons.beach_access, textforIcon: "Pressure",value: currentPressure.toDouble(),)
        
                
              ],
            ),
            
        
            
          ],
        
          
        ) 
            );
        },
      )


    );
  }
}


