// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../consts/colors.dart';
import '../provider/media_query.dart';

class NeumorphicButton extends StatefulWidget {
  bool ispressed;
  VoidCallback onTap;
  // final Widget child;
  NeumorphicButton({
    required this.ispressed,
    required this.onTap,
  });

  @override
  State<NeumorphicButton> createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  var colors = boxShadowColors;
  @override
  Widget build(BuildContext context) {
    final mq = Provider.of<MyMediaQuery>(context);
    return GestureDetector(
      onTap: widget.onTap,
      onLongPressStart: (_) => setState(() => widget.ispressed = true),
      onLongPressEnd: (_) => setState(() => widget.ispressed = false),
      child: Container(
        height: mq.getHeight(context) * 0.055,
        width: mq.getWidth(context) * 0.7,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Verify',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        // child: TextButton(
        //     style: TextButton.styleFrom(
        //       enableFeedback: false,
        //       minimumSize: Size(
        //           mq.getWidth(context) * 0.8, mq.getHeight(context) * 0.03),
        //     ),
        //     child: Text(
        //       'Verify',
        //       style: Theme.of(context).textTheme.bodyText1,
        //     ),
        //     onPressed: () {
        //       setState(() {});
        //     }),
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
          boxShadow: widget.ispressed ? onClickBoxShadow : boxShadowColors,
        ),
      ),
    );
  }
}
