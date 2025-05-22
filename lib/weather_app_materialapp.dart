import 'package:flutter/material.dart';

class MyWeatherApp extends StatelessWidget{
  const MyWeatherApp({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade700,
      appBar: AppBar(
        title: Text("Weather App",
        style: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          wordSpacing: 5,
        ),
        ),
        backgroundColor: Colors.blueGrey.shade700,
        centerTitle: true,
        
        
      ),
      body: Center(
        
        child: Image.asset("assets/images/weather_logo.png",
        width: 420,
        height: 300,

        
        
      ),
      
      
      )

    );
  }
}