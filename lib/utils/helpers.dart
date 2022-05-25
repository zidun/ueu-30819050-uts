import 'package:flutter/material.dart';

Widget spacingV(double height){
  return SizedBox(
      height:height
  );
}

Widget spacingH(double width){
  return SizedBox(
      width:width
  );
}

Widget borderSection(double width, double height, Color color){
  return Container(
      width:width,
      height: height,
      decoration: BoxDecoration(color: color),
  );
}