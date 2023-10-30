import 'package:flutter/material.dart';

class BikeOptions extends StatelessWidget {
  final Color color;
  final Image bikeImage;
  final String bikeName;
  final String bikeCompany;
  final String bikePrice;
  const BikeOptions(
      {super.key,
      required this.color,
      required this.bikeImage,
      required this.bikeName,
      required this.bikeCompany,
      required this.bikePrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 143,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: bikeImage),
          Text(
            bikeName,
            style: const TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Text(
            bikeCompany,
            style: const TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          Row(
            children: [
              Text(
                "$bikePrice/",
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
