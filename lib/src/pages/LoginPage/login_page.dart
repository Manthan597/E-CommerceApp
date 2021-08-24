import 'package:demo/src/widgets/button.dart';
import 'package:demo/src/widgets/image_asset.dart';
import 'package:demo/src/widgets/text.dart';
import 'package:demo/src/widgets/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../anim.dart';
import 'login_page_controller.dart';

class LoginPage extends StatelessWidget {
  final selected;
  LoginPage({Key key, this.selected}) : super(key: key);
  final loginPageController = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              FadeAnimations(
                3,
                ImageAsset(
                  loginPageController.loginBackground,
                  200.0,
                  200.0,
                  BoxFit.contain,
                ),
                // child: ImageAsset(
                //   loginPageController.loginBackground,
                //   200.0,
                //   200.0,
                //   BoxFit.contain,
                // ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeAnimations(
                3.5,
                TextFieldWidget(
                  controller: loginPageController.userNameController,
                  hintText: "Username",
                  obscureText: false,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeAnimations(
                4,
                TextFieldWidget(
                  controller: loginPageController.passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeAnimations(
                4.5,
                ButtonWidget(
                  color: Colors.lightBlue,
                  icon: null,
                  onTap: loginPageController.loginPage,
                  screen: size,
                  text: "Login",
                ),
              ),
              SizedBox(
                height: 3,
              ),
              FadeAnimations(
                5,
                Align(
                  alignment: Alignment.topRight,
                  child: TextWidget(
                    onTap: loginPageController.forgotPassword,
                    text: "Forget Password?",
                    textColor: Colors.black,
                    textSize: 15.0,
                  ),
                ),
              ),
              SizedBox(
                height: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
