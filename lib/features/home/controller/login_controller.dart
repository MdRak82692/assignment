import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool showLogin = false.obs;
  RxBool isPasswordVisible = false.obs;
  
  final  usernameController = TextEditingController();
  final  passwordController = TextEditingController();

  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    startLoginTimer();
  }

  void startLoginTimer() {
    _timer = Timer(const Duration(seconds: 5), () {
      showLogin.value = true;
    });
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  @override
  void onClose() {
    _timer?.cancel();
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
