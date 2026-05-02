import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/form_state_key_gloable/form_state_gloable_key.dart';

class LoginController extends GetxController {
  final isLoading = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final originEmail = '123'.trim();
  final originPassword = '123'.trim();

  Future<void> login() async {
    final emailTrim = emailController.text.trim();
    final passwordTrim = passwordController.text.trim();
    if (!formKey.currentState!.validate()) return;
    try {
      isLoading.value = true;

      if (emailTrim != originEmail && passwordTrim != originPassword) {
        log('Invalid password or email');
      } else {
        //   Get.offAllNamed('/home');
        await Future.delayed(Duration(seconds: 1), () {
        log('Login success');
        });
      }
    } catch (e) {
      throw Exception('Error to login ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }
}
