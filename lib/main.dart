import 'package:flutter/material.dart';
import 'weather_screen.dart';

void main(){
  runApp(MyWeatherApp());

}


class MyWeatherApp extends StatelessWidget{
  // const MyWeatherApp({Key? key}): super(key: key);
  const MyWeatherApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      
      theme: ThemeData.dark(useMaterial3: true).copyWith(),
      home: WeatherScreen()
      
  
    );
  }
}