import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rupiyo/theme/Colors.dart';
import 'package:sizer/sizer.dart';

class NetworkController extends GetxController {
  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() {
    super.onInit();
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(ConnectivityResult connectivityResult) {
    if (connectivityResult == ConnectivityResult.none) {
      Get.rawSnackbar(
          messageText: const Text(
            'Please Connect To The Internet',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          isDismissible: false,
          duration: const Duration(days: 1),
          backgroundColor: ColorsField.MainColor,
          icon: const Icon(
            CupertinoIcons.wifi_exclamationmark,
            color: ColorsField.MainColor,
            size: 35,),
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED);
    } else {
      if(Get.isSnackbarOpen){
        Get.closeCurrentSnackbar();
      }
    }
  }
}
