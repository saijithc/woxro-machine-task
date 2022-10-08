import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woxro/location/view/price_details.dart';
import 'package:woxro/location/view/radio_button.dart';
import 'package:woxro/property/provider/property_provider.dart';
import 'package:woxro/widgets/custom_app_bar.dart';
import 'package:woxro/widgets/custom_text.dart';
import 'package:woxro/widgets/custom_textform.dart';

class PropertyScreen extends StatelessWidget {
  const PropertyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
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
                        value: .25,
                        strokeWidth: 10,
                      ),
                      customText("1/4", weight: FontWeight.bold)
                    ]),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText("Property", sizes: 20, weight: FontWeight.w800),
                    customText("Progress Details  >", weight: FontWeight.bold)
                  ],
                )
              ],
            ),
          ),
          Wrap(
            spacing: w * .03,
            alignment: WrapAlignment.center,
            runSpacing: w * .01,
            children: getItems()
                .map((e) => SizedBox(
                      width: w * 0.21,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            children: [
                              const Icon(Icons.my_library_books_outlined),
                              const SizedBox(
                                height: 2,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: customText(e,
                                    maxlines: 2,
                                    color: Colors.black45,
                                    sizes: 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: CustomTextform(
              color: Colors.black,
              filledcolor: Colors.white,
              labetext: "Property Title",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                customText("Transaction Type", color: Colors.black26),
              ],
            ),
          ),
          Consumer<PropertyProvider>(
            builder: (context, val, child) {
              return Row(
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: 10,
                    children: val.types
                        .map((e) => CustomRadioButton(
                            text: e,
                            groupValue: val.type,
                            onChanged: val.setValue))
                        .toList(),
                  ),
                ],
              );
            },
          ),
          const PriceDetails()
        ],
      )),
    );
  }

  List<String> getItems() {
    List<String> items = [];
    for (var i = 0; i < 9; i++) {
      items.add("Industrial Land");
    }
    return items;
  }
}
