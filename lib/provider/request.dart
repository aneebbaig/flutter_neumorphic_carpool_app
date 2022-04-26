import 'package:flutter/cupertino.dart';

class Request extends ChangeNotifier {
  bool _fromFast = true;

  getRequestType() => _fromFast;

  changeRequestType(bool req) {
    _fromFast = req;
  }
}
