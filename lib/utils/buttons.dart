import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final icon;
  final String number;

  Buttons({required this.icon, required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Icon(icon, size: 35,),
          SizedBox(height: 5,),
          Text(number, ),
        ],
      ),
    );
  }
}
