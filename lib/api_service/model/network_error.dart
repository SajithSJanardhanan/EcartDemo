import '../../utilities/constants.dart';

class NoInternetError {
  String msg;
  String subMsg;

  NoInternetError(
      {this.msg = 'No internet',
        this.subMsg = 'Check your internet connection'});
}

class ServerError {
  String msg;

  ServerError({this.msg = 'Server Error'});
}

class ResponseInfo {
  String responseStatus;
  int respCode;
  String respMessage;

  ResponseInfo(
      {this.responseStatus = Constants.loading,
        this.respCode = 200,
        this.respMessage = ''});
}
