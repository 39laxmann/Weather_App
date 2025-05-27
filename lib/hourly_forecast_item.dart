import 'package:flutter/material.dart';


class HourlyForecast extends StatelessWidget{
  final String hourlyTime;
  final IconData iconName;
  final String tempr;
  const HourlyForecast({super.key,
  required this.hourlyTime,required this.iconName, required this.tempr,
  });
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
                          
                          Text(hourlyTime,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          const SizedBox(height: 6,),
                          Icon(iconName,
                          color: Colors.white,
                          size: 32,),
                          const SizedBox(height: 5,),
                          Text(tempr),
                        ],
                      ),
                    ),
                  ),
                );
                
  }
}