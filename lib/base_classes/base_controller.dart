import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {

  StreamSubscription? networkState;
  RxBool isNetworkConnected = true.obs;

  @override
  void onInit() async {
    try {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent));
      await checkNetworkConnection();
    } catch (e) {
      debugPrint("BaseController: $e");
    }
    super.onInit();
  }


  checkNetworkConnection() async {
    networkState = Connectivity().onConnectivityChanged.listen((event) {
      final isNotConnected = event.contains(ConnectivityResult.none);
      if (isNotConnected) {
        isNetworkConnected.value = false;
      } else {
        isNetworkConnected.value = true;
      }
    });
  }


  @override
  void onClose() {
    networkState?.cancel();
    super.onClose();
  }


}