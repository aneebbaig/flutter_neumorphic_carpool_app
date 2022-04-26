// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../consts/colors.dart';
import '../provider/media_query.dart';

class NeumorphicContainer extends StatelessWidget {
  final Widget child;
  const NeumorphicContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    final mq = Provider.of<MyMediaQuery>(context);
    return Container(
      child: child,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [
            0.3,
            0.7,
            0.9,
          ],
        ),
        borderRadius: BorderRadius.circular(mq.getWidth(context) * 0.2),
        boxShadow: boxShadowColors,
      ),
    );
  }
}
