// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../consts/colors.dart';
import '../provider/media_query.dart';

class NeumorphicContainer extends StatefulWidget {
  final Widget child;
  const NeumorphicContainer({required this.child});

  @override
  State<NeumorphicContainer> createState() => _NeumorphicContainerState();
}

class _NeumorphicContainerState extends State<NeumorphicContainer> {
  @override
  Widget build(BuildContext context) {
    var colors = boxShadowColors;
    final mq = Provider.of<MyMediaQuery>(context);
    return Listener(
      onPointerDown: (_) => setState(() => colors = onClickBoxShadow),
      onPointerUp: (_) => setState(() => colors = boxShadowColors),
      child: Container(
        child: widget.child,
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
          boxShadow: colors,
        ),
      ),
    );
  }
}
