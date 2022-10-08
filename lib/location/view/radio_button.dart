import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton(
      {Key? key,
      required this.text,
      required this.groupValue,
      required this.onChanged})
      : super(key: key);
  final String text;
  final String? groupValue;
  final Function(String?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio(value: text, groupValue: groupValue, onChanged: onChanged),
        Text(text)
      ],
    );
  }
}
