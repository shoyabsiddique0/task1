// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/Picuture_in_Picture/View/pic_in_pic.dart';
import 'package:task1/Widgets/View/AllWidgets.dart';
import 'package:task1/lottieFiles/View/LottieImpl.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), centerTitle: true),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.to(Pic_in_Pic());
              },
              child: const Text("Picture in Picture")),
          ElevatedButton(
              onPressed: () {
                Get.to(LottieImpl());
              },
              child: const Text("Lottie Files")),
          ElevatedButton(
              onPressed: () {
                Get.to(() => AllWidgets());
              },
              child: const Text("Hero, FadeImage and Tooltip")),
        ],
      )),
    );
  }
}
