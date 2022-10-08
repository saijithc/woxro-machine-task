import 'package:flutter/material.dart';
import 'package:woxro/home/view/commercial_office.dart';
import 'package:woxro/home/view/land_card.dart';
import 'package:woxro/home/view/search_box.dart';
import 'package:woxro/widgets/custom_app_bar.dart';
import 'package:woxro/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const CustomAppBar(),
                  const SearchBar(),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, elevation: 1),
                          onPressed: () {},
                          child: customText("Property", color: Colors.black)),
                      const SizedBox(width: 10),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, elevation: 0),
                          onPressed: () {},
                          child: customText("Services", color: Colors.black38)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(height: h * 0.13, width: w, child: const LandCard()),
                  SizedBox(
                      height: h * 0.3,
                      width: w,
                      child: const CommercialOffice()),
                  SizedBox(
                      height: h * 0.3,
                      width: w,
                      child: const CommercialOffice()),
                  SizedBox(
                      height: h * 0.3,
                      width: w,
                      child: const CommercialOffice()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
