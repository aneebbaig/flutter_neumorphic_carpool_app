import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/media_query.dart';

class MyForm extends StatelessWidget {
  final List<Widget> children;
  const MyForm({required this.children});

  @override
  Widget build(BuildContext context) {
    final mq = Provider.of<MyMediaQuery>(context);
    return Padding(
      padding: EdgeInsets.only(
        left: mq.getWidth(context) * 0.07,
        right: mq.getWidth(context) * 0.07,
      ),
      child: Form(
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
