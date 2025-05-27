import 'package:flutter/material.dart';


class AdditionInfoItem extends StatelessWidget {
  const AdditionInfoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.water_drop,
        size: 32,),
        const SizedBox(height: 8,),
        Text("Humidity"),
        const SizedBox(height: 6,),
        Text("91",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),)
      ],
    );
  }
}