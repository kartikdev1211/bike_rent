import 'package:flutter/material.dart';

class DisplayedItemsWidget extends StatelessWidget {
  final String text1;
  final String text2;
  const DisplayedItemsWidget(
      {super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: const TextStyle(
                color: Colors.black, fontSize: 21, fontWeight: FontWeight.w700),
          ),
          TextSpan(
            text: text2,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 21,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
