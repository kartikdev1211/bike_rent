import 'package:bike_rent/screens/home_screen.dart';
import 'package:bike_rent/screens/navScreens/location_screen.dart';
import 'package:bike_rent/screens/navScreens/setting_screen.dart';
import 'package:bike_rent/screens/navScreens/wallet_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List screens = [
    const HomeScreen(),
    const LocationScreen(),
    const WalletScreen(),
    const SettingScreen(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Location",
            icon: Icon(Icons.location_on_outlined),
          ),
          BottomNavigationBarItem(
            label: "Wallet",
            icon: Icon(Icons.wallet_rounded),
          ),
          BottomNavigationBarItem(
            label: "Setting",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
