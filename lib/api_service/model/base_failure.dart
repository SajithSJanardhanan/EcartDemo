class BaseFailure {
  BaseFailure({
    this.httpStatusCode,
    this.response,
    this.message,});

  BaseFailure.fromJson(dynamic json) {
    httpStatusCode = json['httpStatusCode'];
    response = json['response'];
    message = json['message'];
  }
  String? httpStatusCode;
  dynamic response;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['httpStatusCode'] = httpStatusCode;
    map['response'] = response;
    map['message'] = message;
    return map;
  }

}