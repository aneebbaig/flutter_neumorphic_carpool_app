// ignore_for_file: use_key_in_widget_constructors

import '../consts/colors.dart';
import '../provider/media_query.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Icon? iconn;
  final double rad;
  final keytype;
  final maxlen;
  final align;
  final bool? cursor;
  final TextStyle? style;

  const MyTextFormField(
      {required this.controller,
      required this.label,
      this.iconn,
      this.rad = 30,
      this.keytype,
      this.maxlen,
      this.cursor = true,
      this.align,
      this.style,
      t});

  @override
  Widget build(BuildContext context) {
    final mq = Provider.of<MyMediaQuery>(context);
    return Container(
      decoration: BoxDecoration(
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
      ),
      child: TextFormField(
        onChanged: (val) {
          if (val.contains(RegExp(r'[0-9]'))) {
            FocusScope.of(context).nextFocus();
            return;
          }
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.red,
              content: Text("Enter a Number"),
            ),
          );

          return;
        },
        cursorColor: primaryColor,
        showCursor: cursor,
        keyboardType: keytype,
        controller: controller,
        style: style,
        decoration: InputDecoration(
          focusColor: focusColor,
          fillColor: bgColor,
          filled: true,
          labelText: label,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(rad),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(rad),
            borderSide: BorderSide.none,
          ),
          prefixIcon: iconn,
          prefixIconColor: primaryColor,
          alignLabelWithHint: false,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle:
              Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}
