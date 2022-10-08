import 'package:flutter/material.dart';

import '../../widgets/custom_textform.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomTextform(
      filledcolor: Colors.white,
      color: Colors.black,
      icon: Icon(
        Icons.search,
        size: 35,
        color: Colors.black38,
      ),
      hint: "search",
    );
  }
}
