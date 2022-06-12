import 'package:flutter/material.dart';

Color primaryColor = Colors.grey.shade500;
Color bgColor = Colors.grey.shade300;
Color navBarUnselectedColor = Colors.black54;
Color navBarSelectedColor = Colors.black54;
List<LinearGradient> listTileGradientList = [
  LinearGradient(colors: [Colors.yellow.shade700, Colors.redAccent]),
  LinearGradient(colors: [Colors.greenAccent, Colors.green.shade800]),
  LinearGradient(
      colors: [Colors.purple.shade300, const Color.fromARGB(255, 97, 43, 247)]),
  const LinearGradient(colors: [
    Color.fromARGB(255, 46, 156, 211),
    Color.fromARGB(255, 19, 71, 214)
  ]),
];

Color dividerColor = Colors.grey.shade400;
List<BoxShadow> boxShadowColors = const [
  BoxShadow(
    color: Colors.black54,
    blurRadius: 7,
    spreadRadius: 1,
    offset: Offset(4, 4),
  ),
  BoxShadow(
    color: Colors.white,
    blurRadius: 7,
    spreadRadius: 1,
    offset: Offset(-4, -4),
  ),
];
List<BoxShadow> onClickBoxShadow = const [
  BoxShadow(
    color: Colors.black54,
    blurRadius: 6,
    spreadRadius: 1,
    offset: Offset(-3, -3),
  ),
  BoxShadow(
    color: Colors.white,
    blurRadius: 6,
    spreadRadius: 0.5,
    offset: Offset(3, 3),
  ),
];
List<Color> gradientColors = [
  Colors.grey.shade300,
  Colors.grey.shade200,
  Colors.grey.shade100,
];
Color buttonColor1 = Colors.blueGrey;
Color buttonColor2 = Colors.redAccent;
Color focusColor = Colors.black;
BoxDecoration otpInputDecoration = BoxDecoration(
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

InputDecoration otpFieldDecoration = InputDecoration(
  focusColor: focusColor,
  fillColor: bgColor,
  filled: true,
  labelText: '',
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: BorderSide.none,
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: BorderSide.none,
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: const BorderSide(color: Colors.red),
  ),
  alignLabelWithHint: false,
  floatingLabelBehavior: FloatingLabelBehavior.never,
  //labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
);

TextStyle otpFieldTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w900,
  fontFamily: 'Lato',
  color: primaryColor,
);
