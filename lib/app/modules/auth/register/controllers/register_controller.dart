import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final isLoading = false.obs;
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  // final originEmail = '123'.trim();
  // final originPassword = '123'.trim();

  Future<void> register() async {
    isLoading.value = true;


  }
}
