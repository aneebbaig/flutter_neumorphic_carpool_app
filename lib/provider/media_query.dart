import 'package:flutter/cupertino.dart';

class MyMediaQuery extends ChangeNotifier {
  getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
