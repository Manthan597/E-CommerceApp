import 'dart:async';

import 'package:demo/src/Utils/images.dart';
import 'package:demo/src/pages/LoginPage/login_page.dart';
import 'package:get/get.dart';

class SplashPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    goToNextPage();
  }

  String splashBackground = Images.splashBg;
  goToNextPage() {
    Timer(Duration(seconds: 3), () {
      Get.off(
          LoginPage(
            selected: true,
          ),
          transition: Transition.native,
          duration: Duration(milliseconds: 2500),
          popGesture: true);
    });
  }
}
