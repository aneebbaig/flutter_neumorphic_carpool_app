import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../consts/colors.dart';
import '../consts/decorations_helperf.dart';
import '../provider/media_query.dart';

class RidesListItem extends StatelessWidget {
  final int index;

  const RidesListItem(this.index);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    final mq = Provider.of<MyMediaQuery>(context);
    return Padding(
      padding: EdgeInsets.only(
          left: mq.getWidth(context) * 0.05,
          right: mq.getWidth(context) * 0.05),
      child: Container(
        height: mq.getHeight(context) / 7,
        decoration: BoxDecoration(
          gradient: listTileGradientList[index % listTileGradientList.length],
          borderRadius: BorderRadius.circular(circularRadius),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: mq.getHeight(context) * 0.02,
            bottom: mq.getHeight(context) * 0.02,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: CircleAvatar(
                radius: mq.getHeight(context) * 0.04,
                child: const FlutterLogo(),
                backgroundColor: Colors.transparent,
              )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Asad',
                      style: textTheme.headline5,
                    ),
                    SizedBox(
                      height: mq.getHeight(context) * 0.01,
                    ),
                    Text(
                      'Malir',
                      style: textTheme.bodyText1,
                    ),
                    Text(
                      "Ibex",
                      style: textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: mq.getHeight(context) * 0.12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      VerticalDivider(
                        color: dividerColor,
                        thickness: 2,
                        width: 2,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Seats Available",
                            style: textTheme.caption,
                          ),
                          Text(
                            "3",
                            style: textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
