import 'package:flutter/material.dart';

BoxDecoration textFieldDecoration = BoxDecoration(
  color: Colors.grey.shade300,
  borderRadius: BorderRadius.circular(30),
  boxShadow: const [
    BoxShadow(
      color: Colors.black38,
      offset: Offset(-4, -4),
      blurRadius: 6,
      spreadRadius: -2,
    ),
    BoxShadow(
      color: Colors.white,
      offset: Offset(4, 4),
      blurRadius: 6,
      spreadRadius: -2,
    ),
  ],
);

const textFieldInputDecoration = InputDecoration(
  border: InputBorder.none,
  contentPadding: EdgeInsets.only(
    left: 10,
    right: 10,
  ),
);

const double circularRadius = 20;
