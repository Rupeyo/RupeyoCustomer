class AppException implements Exception {
  final Message;
  final prefix;
  AppException([this.Message, this.prefix]);

  @override
  String toString() {
    return '$prefix$Message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}

class BadRequestException extends AppException {
  BadRequestException([String? message])
      : super(message, 'Unauthorized Request');
}

class UnAuthorizedException extends AppException {
  UnAuthorizedException([String? message]) : super(message, 'Invalid Request');
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, 'Invalid Input');
}
