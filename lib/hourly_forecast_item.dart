import 'package:flutter/material.dart';


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