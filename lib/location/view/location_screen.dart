import 'package:flutter/material.dart';
import 'package:woxro/location/view/location_details.dart';
import 'package:woxro/widgets/custom_app_bar.dart';
import 'package:woxro/widgets/custom_text.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(),
              Container(
                height: h * 0.1,
                width: w,
                color: const Color.fromARGB(15, 0, 0, 0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 20),
                      child: SizedBox(
                        child: Stack(alignment: Alignment.center, children: [
                          const CircularProgressIndicator(
                            backgroundColor: Colors.white,
                            color: Color.fromARGB(255, 1, 98, 177),
                            value: .75,
                            strokeWidth: 10,
                          ),
                          customText("3/4", weight: FontWeight.bold)
                        ]),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText("Location",
                            sizes: 20, weight: FontWeight.w800),
                        customText("Progress Details  >",
                            weight: FontWeight.bold)
                      ],
                    )
                  ],
                ),
              ),
              const LocatinDetails()
            ],
          ),
        ),
      ),
    );
  }
}
