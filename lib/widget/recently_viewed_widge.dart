import 'package:flutter/material.dart';

class RecentltViewWidget extends StatelessWidget {
  final Image image;
  final String name;
  final String price;
  final String text;
  final Color bgColor;
  final Color textColor;
  const RecentltViewWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.text,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 60,
        width: 342,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color.fromRGBO(186, 186, 186, 1),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: image,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Text(
                      "$price/",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      "per day",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 80,
            ),
            Container(
              height: 22,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: bgColor,
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
