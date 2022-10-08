import 'package:flutter/material.dart';
import 'package:woxro/widgets/custom_text.dart';

class LandCard extends StatelessWidget {
  const LandCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: SizedBox(
            height: h * 0.09,
            width: w * 0.2,
            child: Column(
              children: [
                const Icon(
                  Icons.my_library_books_outlined,
                  color: Colors.black38,
                  size: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: customText("Industrial\nland",
                      color: Colors.black54,
                      weight: FontWeight.bold,
                      sizes: 13),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
