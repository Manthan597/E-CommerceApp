import 'package:demo/src/pages/SplashPage/splash_page_controller.dart';
import 'package:demo/src/widgets/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  final splashPageController = Get.put(SplashPageController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: size.height,
          width: size.width,
          child: ImageAsset(
            splashPageController.splashBackground,
            150.0,
            150.0,
            BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
