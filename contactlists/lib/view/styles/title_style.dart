import 'package:contactlists/constants/color_constants.dart';
import 'package:flutter/material.dart';

Widget titleText(txt) {
  return Text(
    txt,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.w600, color: CColor.titleColor),
  );
}
