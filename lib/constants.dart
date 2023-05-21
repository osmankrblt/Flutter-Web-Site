import 'package:flutter/material.dart';

isWeb(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return width > height ? true : false;
}

getWidth(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  return width;
}

getHeight(BuildContext context) {
  double height = MediaQuery.of(context).size.height;

  return height;
}
