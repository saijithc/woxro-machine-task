import 'package:flutter/material.dart';
import 'package:woxro/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.format_list_bulleted_rounded,
            color: Colors.black,
          )),
      title: customText("xentice", color: Colors.blue),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/profile-pictures.png"),
          ),
        )
      ],
    );
  }
}
