import 'package:flutter/material.dart';
import 'package:pip_view/pip_view.dart';

// ignore: camel_case_types
class Pic_in_Pic extends StatelessWidget {
  Pic_in_Pic({super.key});
  final GlobalKey pipFlutterPlayerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return PIPView(
      builder: (context, isFloating) {
        return Scaffold(
          resizeToAvoidBottomInset: !isFloating,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.network(
                      "https://staticg.sportskeeda.com/editor/2023/01/107fa-16729479671931-1920.jpg"),
                  MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text('Start floating!'),
                    onPressed: () {
                      PIPView.of(context)!.presentBelow(Floating());
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Floating extends StatelessWidget {
  const Floating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("It is floating"),
        centerTitle: true,
      ),
      body: Center(child: Text("It is floatingggggggggg")),
    );
  }
}
