import 'package:flutter/material.dart';

class NeumorphicStyle extends StatelessWidget {
  final double heightPerc;
  final double widthPerc;
  final Widget widget;
  final double borderRadius;
  final VoidCallback func;

  // ignore: use_key_in_widget_constructors
  const NeumorphicStyle({
    required this.heightPerc,
    required this.widthPerc,
    required this.widget,
    required this.borderRadius,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        height: MediaQuery.of(context).size.height * heightPerc,
        width: MediaQuery.of(context).size.width * widthPerc,
        child: widget,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(3, 3),
              blurRadius: 15,
              spreadRadius: 2,
            ),
            const BoxShadow(
                color: Colors.white,
                offset: Offset(-3, -3),
                blurRadius: 15,
                spreadRadius: 2),
          ],
        ),
      ),
    );
  }
}
