import '../provider/media_query.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({
    Key? key,
    required this.defStyle,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final TextTheme defStyle;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final mq = Provider.of<MyMediaQuery>(context);
    return Padding(
      padding: EdgeInsets.only(left: mq.getWidth(context) * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
          ),
          SizedBox(
            width: mq.getWidth(context) * 0.02,
          ),
          Text(
            title,
            style: defStyle.headline6,
          ),
        ],
      ),
    );
  }
}
