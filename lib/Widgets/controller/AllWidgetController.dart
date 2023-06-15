import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllWidgetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var transformation = 0.0.obs;
  late Rx<AnimationController> controller;
  late Rx<CurvedAnimation> animation;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    controller.value = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true).obs;
    animation.value =
        CurvedAnimation(parent: controller.value, curve: Curves.easeIn);
  }
}
