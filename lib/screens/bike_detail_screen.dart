import 'package:bike_rent/screens/check_out_screen.dart';
import 'package:bike_rent/widget/displayed_items.dart';
import 'package:bike_rent/widget/recently_viewed_widge.dart';
import 'package:flutter/material.dart';

class BikeDetailScreen extends StatefulWidget {
  const BikeDetailScreen({super.key});

  @override
  State<BikeDetailScreen> createState() => _BikeDetailScreenState();
}

class _BikeDetailScreenState extends State<BikeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 31, left: 22, right: 19),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 30,
                        width: 29,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 196, 195, 195),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 51,
                    ),
                    Container(
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(186, 186, 186, 1),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          "Bike Deatils",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Indian",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          "Scout Bobber",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 29,
                        ),
                        Container(
                          height: 63,
                          width: 136,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color.fromRGBO(186, 186, 186, 1),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 13, top: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Category",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(140, 126, 126, 1),
                                  ),
                                ),
                                Text(
                                  "Cruiser",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 29,
                        ),
                        Container(
                          height: 63,
                          width: 136,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color.fromRGBO(186, 186, 186, 1),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 13, top: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Displacement",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(140, 126, 126, 1),
                                  ),
                                ),
                                Text(
                                  "1133 cc",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 282,
                      width: 203,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(186, 186, 186, 0.4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        "assets/images/scoutbobber1.png",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 63,
                      width: 136,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color.fromRGBO(186, 186, 186, 1),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 13, top: 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Max. Speed",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(140, 126, 126, 1),
                              ),
                            ),
                            Text(
                              "124 km/h",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CheckOutScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color.fromRGBO(186, 186, 186, 1),
                          ),
                          color: Colors.black,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 13, top: 7),
                          child: Column(
                            children: [
                              Text(
                                "Rent",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "1499/per day",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 21),
                child: DisplayedItemsWidget(text1: "Add ", text2: "items"),
              ),
              const SizedBox(
                height: 15,
              ),
              RecentltViewWidget(
                image: Image.asset("assets/images/bike_jacket.png"),
                name: "Riding Jacket",
                price: "800",
                text: "1",
                bgColor: Colors.black,
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 13,
              ),
              RecentltViewWidget(
                image: Image.asset("assets/images/gloves.png"),
                name: "Riding Gloves",
                price: "800",
                text: "Add",
                bgColor: const Color.fromRGBO(186, 186, 186, 1),
                textColor: Colors.black,
              ),
              const SizedBox(
                height: 13,
              ),
              RecentltViewWidget(
                image: Image.asset("assets/images/helmet.png"),
                name: "Riding Helmet",
                price: "800",
                text: "1",
                bgColor: Colors.black,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
