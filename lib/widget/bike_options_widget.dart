import 'package:flutter/material.dart';

class BikeOptionsWidget extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  const BikeOptionsWidget(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: 100,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: 2),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, color: textColor),
        ),
      ),
    );
  }
}
