import 'package:flutter/material.dart';

Widget customText(text,
    {Color? color, double? sizes, FontWeight? weight, int? maxlines}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: color,
        fontSize: sizes,
        fontWeight: weight,
        overflow: TextOverflow.ellipsis),
    maxLines: maxlines,
  );
}
