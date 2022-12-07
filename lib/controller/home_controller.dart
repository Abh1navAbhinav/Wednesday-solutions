import 'dart:developer';

import 'package:api_integration/model/user_response_model.dart';
import 'package:api_integration/services/user_response.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<UserResponse> data = [];

  Future<void> fetchDetails() async {
    UserResponse? response = await UserResponses.getList();
    if (response != null) {
      data.add(response);
    } else {
      log('Response is null');
    }
  }

  @override
  void onInit() {
    fetchDetails();
    super.onInit();
  }
}
