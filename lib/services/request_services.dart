import 'dart:io';

import 'package:car_pool/model/request_model.dart';
import 'package:car_pool/services/api_status.dart';
import 'package:http/http.dart' as http;

class RequestServices {
  static Future<Object> getRequests() async {
    try {
      var url = Uri.parse('');
      var response = await http.get(url);
      if (200 == response.statusCode) {
        return Success(response: requestModelFromJson(response.body));
      }
      return Failure(code: 100, errorResponse: 'Invalid Response');
    } on HttpException {
      return Failure(
        code: 101,
        errorResponse: "Invalid Response",
      );
    } on FormatException {
      return Failure(
        code: 102,
        errorResponse: "No Internet",
      );
    } catch (e) {
      return Failure(code: 103, errorResponse: 'Unknown Error');
    }
  }
}
