
import 'dart:convert';
import 'dart:io';
import 'package:ecart/modules/home/model/product_res_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../api_service/model/api_response.dart';
import '../../../api_service/model/base_failure.dart';
import '../../../api_service/model/network_error.dart';
import '../../../utilities/constants.dart';
class HomeRepo {


  Future<ApiResponse> getCategory() async {
    try {

      final response = await http.get(
        Uri.parse(Constants.getCategory),
      );
      if (response.statusCode == 401) {
        print("session issue");
      }
      if (response.statusCode == 200) {
        return ApiResponse.success(jsonDecode(response.body));
      }
      return ApiResponse.error(BaseFailure.fromJson(jsonDecode(response.body)));
    } on SocketException {
      return ApiResponse.error(NoInternetError());
    } on HttpException {
      return ApiResponse.error(ServerError(msg: 'Server error'));
    } on FormatException {
      return ApiResponse.error(ServerError(msg: 'Invalid response'));
    } catch (e) {
      return ApiResponse.error(ServerError(msg: 'Unknown error occurred'));
    }
  }


  Future<ApiResponse> getProduct(String category) async {
    try {

      final response = await http.get(
        Uri.parse("${Constants.getProduct}/$category"),
      );
      if (response.statusCode == 401) {
        print("session issue");
      }
      if (response.statusCode == 200) {
        return ApiResponse.success(jsonDecode(response.body));
      }
      return ApiResponse.error(BaseFailure.fromJson(jsonDecode(response.body)));
    } on SocketException {
      return ApiResponse.error(NoInternetError());
    } on HttpException {
      return ApiResponse.error(ServerError(msg: 'Server error'));
    } on FormatException {
      return ApiResponse.error(ServerError(msg: 'Invalid response'));
    } catch (e) {
      return ApiResponse.error(ServerError(msg: 'Unknown error occurred'));
    }
  }

}