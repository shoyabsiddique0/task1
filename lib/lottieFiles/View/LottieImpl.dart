import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieImpl extends StatelessWidget {
  const LottieImpl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie files Impl"),
        centerTitle: true,
      ),
      body:
          Center(child: Lottie.asset("assets/72484-naruto-eating-ramen.json")),
    );
  }
}
