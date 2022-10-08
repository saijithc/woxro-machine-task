import 'package:flutter/material.dart';

InputDecoration textFieldInputDecoration(
    {String? hintText, Icon? icon, Color? filledColor, String? labelText}) {
  return InputDecoration(
    focusedBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
    prefixIcon: icon,
    contentPadding: const EdgeInsets.all(10),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    fillColor: filledColor,
    filled: true,
    labelText: labelText,
    hintText: hintText,
    labelStyle:
        const TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),
  );
}

TextStyle simpleTextFieldStyle(colors) {
  return TextStyle(color: colors);
}
