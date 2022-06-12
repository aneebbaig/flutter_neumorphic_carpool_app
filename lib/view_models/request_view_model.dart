import '../services/api_status.dart';
import 'package:flutter/material.dart';

import '../model/request_model.dart';
import '../services/Request_services.dart';
import '../services/request_error.dart';

class RequestViewModel extends ChangeNotifier {
  RequestViewModel() {
    getRequests();
  }
  bool _loading = false;
  List<RequestModel> _requestList = [];
  RequestError? _requestError;

  bool get loading => _loading;
  List<RequestModel> get requestList => _requestList;
  RequestError? get requestError => _requestError;

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setRequestList(List<RequestModel> requestList) async {
    _requestList = requestList;
  }

  setRequestError(RequestError requestError) {
    _requestError = requestError;
  }

  getRequests() async {
    setLoading(true);
    var response = await RequestServices.getRequests();
    if (response is Success) {
      setRequestList(response.response as List<RequestModel>);
    }
    if (response is Failure) {
      RequestError requestError = RequestError(
        code: response.code,
        message: response.errorResponse,
      );
      setRequestError(requestError);
    }
    setLoading(false);
  }
}
