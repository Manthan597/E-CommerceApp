import 'package:demo/src/pages/Dashboard/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  String loginBackground = "assets/login_bg.jpg";
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  bool selected = false;

  void onInit() {
    selected = false;
  }

  loginPage() {
    // Get.snackbar("Login", "Login Page");
    Get.off(Dashboard());
  }

  forgotPassword() {
    Get.snackbar("Forgot Password", "Forgot Password");
  }
}
