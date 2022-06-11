class Success {
  Object response;

  Success({required this.response});
}

class Failure {
  Object errorResponse;
  int code;
  Failure({required this.code, required this.errorResponse});
}
