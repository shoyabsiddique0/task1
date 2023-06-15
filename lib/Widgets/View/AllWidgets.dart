import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:task1/Widgets/controller/AllWidgetController.dart';

class AllWidgets extends StatelessWidget {
  AllWidgets({super.key});
  AllWidgetController controller = Get.put(AllWidgetController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Widgets"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          InkWell(
            onTap: () {
              Get.to(const HeroPage());
            },
            child: Hero(
              tag: "Butterfly",
              child: Lottie.asset(
                "assets/66767-butterfly-lottie-animation.json",
                width: 100,
                height: 100,
              ),
            ),
          ),
          Tooltip(
            message: "This is fade in image",
            child: FadeInImage(
                placeholder: Image.asset("zoro.gif").image,
                image: Image.network(
                        "https://steamuserimages-a.akamaihd.net/ugc/925925099622241332/62BE9B35F8A39CE4BA16630C7485C460331F2715/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false")
                    .image),
          ),
          Draggable(
            feedback: Lottie.asset(
                "assets/34133-naruto-animated-at-cocopry-sticker-5.json",
                width: 200,
                height: 200),
            child: Lottie.asset(
                "assets/34133-naruto-animated-at-cocopry-sticker-5.json",
                width: 100,
                height: 100),
          ),
          Obx(
            () => Transform.rotate(
              angle: controller.transformation.value,
              child: Image.asset(
                "assets/zoro.gif",
                width: 100,
                height: 100,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    controller.transformation.value =
                        controller.transformation.value - pi / 2;
                  },
                  child: Icon(Icons.rotate_90_degrees_ccw)),
              ElevatedButton(
                  onPressed: () {
                    controller.transformation.value =
                        controller.transformation.value + pi / 2;
                  },
                  child: Icon(Icons.rotate_90_degrees_cw)),
            ],
          ),
          // FadeTransition(
          //   opacity: controller.controller.value,
          //   child: Text("Fading"),
          // ),
        ]),
      ),
    );
  }
}

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: Hero(
          child: Lottie.asset("assets/66767-butterfly-lottie-animation.json"),
          tag: "Butterfly",
        ),
      ),
    );
  }
}
