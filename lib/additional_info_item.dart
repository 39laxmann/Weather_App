import 'package:flutter/material.dart';


class AdditionInfoItem extends StatelessWidget {
  final IconData icon;
  final String textforIcon;
  final double value;
  const AdditionInfoItem({
    super.key,
    required this.icon,
    required this.textforIcon,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,
        size: 32,),
        const SizedBox(height: 8,),
        Text(textforIcon),
        const SizedBox(height: 6,),
        Text(value.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),)
      ],
    );
  }
}