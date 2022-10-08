import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:woxro/widgets/custom_text.dart';
import 'package:woxro/widgets/custom_textform.dart';

class LocatinDetails extends StatelessWidget {
  const LocatinDetails({Key? key}) : super(key: key);
  static const double _defaultLat = 9.939093;
  static const double _defaultLng = 76.270523;
  final CameraPosition _defaultLocation =
      const CameraPosition(target: LatLng(_defaultLat, _defaultLng), zoom: 15);
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const CustomTextform(
            filledcolor: Colors.black26,
            hint: "country",
            color: Colors.black,
          ),
          SizedBox(
            height: h * 0.02,
          ),
          const CustomTextform(
              labetext: "City", color: Colors.black, filledcolor: Colors.white),
          SizedBox(
            height: h * 0.02,
          ),
          const CustomTextform(
              labetext: "Locality",
              color: Colors.black,
              filledcolor: Colors.white),
          SizedBox(
            height: h * 0.02,
          ),
          const CustomTextform(
              labetext: "Street",
              color: Colors.black,
              filledcolor: Colors.white),
          SizedBox(height: h * 0.02),
          SizedBox(
              height: h * 0.3,
              child: GoogleMap(initialCameraPosition: _defaultLocation)),
          SizedBox(height: h * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: w * 0.4,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.white,
                        side: const BorderSide(
                          color: Color.fromARGB(255, 5, 91, 161),
                        )),
                    onPressed: () {},
                    child: customText("Back",
                        color: const Color.fromARGB(255, 5, 91, 161),
                        weight: FontWeight.w900)),
              ),
              SizedBox(
                width: w * 0.4,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: const Color.fromARGB(255, 5, 91, 161),
                    ),
                    onPressed: () {},
                    child: customText("Continue",
                        color: Colors.white, weight: FontWeight.w900)),
              )
            ],
          )
        ],
      ),
    );
  }
}
