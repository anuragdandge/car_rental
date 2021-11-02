import 'dart:html';
import 'dart:ui';

import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> pages = [
      {'image': ''},
      {'image': ''},
      {'image': ''},
    ];
    return MaterialApp(
      home: Scaffold(
        body: ConcentricPageView(
          radius: 30,
          verticalPosition: 0.85,
          colors: [Colors.purpleAccent, Colors.blueAccent, Colors.pinkAccent],
          itemBuilder: (index, value) {
            int pageIndex = (index % pages.length);
            return Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.network(pages[pageIndex]['image'], width: 300)],
            ));
          },
        ),
      ),
    );
  }
}
