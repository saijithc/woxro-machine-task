import 'package:flutter/material.dart';
import 'package:woxro/widgets/textformstyle.dart';

class CustomTextform extends StatelessWidget {
  const CustomTextform(
      {Key? key,
      this.hint,
      this.icon,
      this.type,
      this.labetext,
      required this.color,
      required this.filledcolor})
      : super(key: key);
  final String? labetext;
  final TextInputType? type;
  final String? hint;
  final Color color;
  final Color filledcolor;
  final Icon? icon;
  @override
  Widget build(
    BuildContext context,
  ) {
    return TextFormField(
        textInputAction: TextInputAction.next,
        keyboardType: type,
        style: simpleTextFieldStyle(color),
        decoration: textFieldInputDecoration(
            hintText: hint,
            labelText: labetext,
            filledColor: filledcolor,
            icon: icon));
  }
}
