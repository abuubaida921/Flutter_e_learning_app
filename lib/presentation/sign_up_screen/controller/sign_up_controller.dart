import 'package:flutter/material.dart';
import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/sign_up_screen/models/sign_up_model.dart';

class SignUpController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.clear();
    emailController.clear();
    passwordController.clear();
  }
}
