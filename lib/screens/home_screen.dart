import 'package:bike_rent/screens/bike_detail_screen.dart';
import 'package:bike_rent/widget/bike_options.dart';
import 'package:bike_rent/widget/bike_options_widget.dart';
import 'package:bike_rent/widget/displayed_items.dart';
import 'package:bike_rent/widget/recently_viewed_widge.dart';
import 'package:bike_rent/widget/search_bar.dart';
import 'package:bike_rent/widget/user_details.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserDeatilsWidget(
                  userImage: Image.asset("assets/images/userImage.png"),
                  userName: "Abhi Tiwari"),
              const SizedBox(
                height: 32,
              ),
              const SearchBarWidget(),
              const SizedBox(
                height: 32,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BikeOptionsWidget(
                        bgColor: Colors.white,
                        text: "Adventure",
                        textColor: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      BikeOptionsWidget(
                        bgColor: Colors.black,
                        text: "Cruiser",
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      BikeOptionsWidget(
                        bgColor: Colors.white,
                        text: "Sportsbike",
                        textColor: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      BikeOptionsWidget(
                        bgColor: Colors.white,
                        text: "Tourer",
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 14),
                child: DisplayedItemsWidget(
                  text1: "Popular ",
                  text2: "items",
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BikeOptions(
                        color: Colors.white,
                        bikeImage: Image.asset(
                          "assets/images/meteor.png",
                          height: 150,
                        ),
                        bikeName: "Meteor",
                        bikeCompany: "Royal Enfield",
                        bikePrice: "699",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BikeDetailScreen(),
                            ),
                          );
                        },
                        child: BikeOptions(
                          color: Colors.white,
                          bikeImage: Image.asset(
                            "assets/images/bike2.png",
                          ),
                          bikeName: "Scout Bobber",
                          bikeCompany: "Indian",
                          bikePrice: "1499",
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      BikeOptions(
                        color: Colors.white,
                        bikeImage: Image.asset(
                          "assets/images/newbike3.png",
                        ),
                        bikeName: "Rebel 1100",
                        bikeCompany: "Honda",
                        bikePrice: "1199",
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 14),
                child:
                    DisplayedItemsWidget(text1: "Recently ", text2: "viewed"),
              ),
              const SizedBox(
                height: 18,
              ),
              RecentltViewWidget(
                image: Image.asset("assets/images/recentlybike1.png"),
                name: "Hayabusa",
                price: "2000",
                text: "Available",
                textColor: Colors.white,
                bgColor: Colors.black,
              ),
              const SizedBox(
                height: 15,
              ),
              RecentltViewWidget(
                image: Image.asset("assets/images/bullet.png"),
                name: "Classic 350",
                price: "1500",
                text: "Booked",
                textColor: Colors.black,
                bgColor: const Color.fromRGBO(191, 197, 191, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
