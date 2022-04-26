// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../consts/colors.dart';
import '../provider/media_query.dart';

class MyCircularButton extends StatelessWidget {
  final Widget child;
  final VoidCallback func;
  const MyCircularButton({
    required this.child,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    final mq = Provider.of<MyMediaQuery>(context);
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          shape: const CircleBorder(),
          minimumSize:
              Size(mq.getWidth(context) * 0.15, mq.getWidth(context) * 0.15),
        ),
        child: SizedBox(
          height: mq.getWidth(context) * 0.12,
          width: mq.getWidth(context) * 0.12,
          child: child,
        ),
        onPressed: func,
      ),
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
