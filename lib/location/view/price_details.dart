import 'package:flutter/material.dart';
import 'package:woxro/widgets/custom_textform.dart';

class PriceDetails extends StatelessWidget {
  const PriceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: w * 1.7 / 3,
              child: const CustomTextform(
                  color: Colors.black,
                  filledcolor: Colors.white,
                  labetext: "Price"),
            ),
            SizedBox(
              width: w * 1 / 3,
              child: const CustomTextform(
                  color: Colors.black, filledcolor: Colors.white, hint: "/Hr"),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: w * 1.7 / 3,
              child: const CustomTextform(
                  color: Colors.black,
                  filledcolor: Colors.white,
                  labetext: "Build Area"),
            ),
            SizedBox(
              width: w * 1 / 3,
              child: const CustomTextform(
                  color: Colors.black, filledcolor: Colors.white, hint: "/Hr"),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: w * 1.7 / 3,
              child: const CustomTextform(
                  color: Colors.black,
                  filledcolor: Colors.white,
                  labetext: "Plot Area"),
            ),
            SizedBox(
              width: w * 1 / 3,
              child: const CustomTextform(
                  color: Colors.black, filledcolor: Colors.white, hint: "/Hr"),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: w * 2.8 / 3,
          child: const CustomTextform(
              color: Colors.black,
              filledcolor: Colors.white,
              labetext: "Plot Area"),
        )
      ],
    );
  }
}
