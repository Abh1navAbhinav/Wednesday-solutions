import 'dart:developer';

import 'package:api_integration/model/user_response_model.dart';
import 'package:api_integration/services/endpoints.dart';
import 'package:dio/dio.dart';

class UserResponses {
  static final Dio dio = Dio();

//-----------------------------------------------------------get user response
  static Future<UserResponse?> getList() async {
    try {
      final Response response = await dio.get(Endpoints.getUrl);

      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        return UserResponse.fromJson(response.data[0]);
      }
    } catch (e) {
      log('on catch-------- $e ');
    }
    return null;
  }
}
