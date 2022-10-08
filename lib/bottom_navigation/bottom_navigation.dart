import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woxro/location/view/location_screen.dart';
import 'package:woxro/property/view/property.dart';

import '../home/view/home_screen.dart';
import 'bottom_provider/bottom_provider.dart';

class BottomNavigations extends StatelessWidget {
  BottomNavigations({Key? key}) : super(key: key);
  final List pages = [
    const HomeScreen(),
    const LocationScreen(),
    const PropertyScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.1),
        resizeToAvoidBottomInset: false,
        body: pages[context.watch<BottomProvder>().currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedItemColor: Colors.black,
            unselectedItemColor: const Color.fromARGB(95, 15, 15, 15),
            currentIndex: context.watch<BottomProvder>().currentIndex,
            onTap: (newIndex) {
              context.read<BottomProvder>().update(newIndex);
            },
            items: const [
              BottomNavigationBarItem(
                  //backgroundColor: Colors.white,
                  icon: Icon(Icons.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.place),
                  //backgroundColor: Colors.white,
                  label: 'Location'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.sell_outlined),
                  // backgroundColor: Colors.white,
                  label: 'Sell'),
            ]));
  }
}
