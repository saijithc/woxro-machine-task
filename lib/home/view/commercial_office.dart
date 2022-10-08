import 'package:flutter/material.dart';
import 'package:woxro/widgets/custom_text.dart';

class CommercialOffice extends StatelessWidget {
  const CommercialOffice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customText("Commercial Office", weight: FontWeight.bold),
              customText("see all", sizes: 11, color: Colors.black38)
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: h * 0.15,
                      width: w * 0.48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage("assets/computer-amc.jpg"),
                              fit: BoxFit.cover)),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(137, 172, 172, 172),
                          child: IconButton(
                              onPressed: () {},
                              icon: index % 2 == 0
                                  ? const Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    )
                                  : const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: w * 0.48,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            customText("Woxro Office",
                                sizes: 12,
                                color: Colors.black,
                                weight: FontWeight.w600),
                            customText(
                              "Rs.2500/Hr",
                              sizes: 8,
                              weight: FontWeight.w800,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: w * 0.48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.pin_drop,
                            color: Colors.green,
                          ),
                          customText("Thrissur",
                              color: Colors.black,
                              sizes: 10,
                              weight: FontWeight.w600)
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
