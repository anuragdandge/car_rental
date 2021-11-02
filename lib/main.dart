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
      {
        'image':
            'https://raw.githubusercontent.com/anuragdandge/car_rental/master/assets/img/img1.png'
      },
      // {
      //   'image':
      //       'https://github.com/anuragdandge/car_rental/blob/master/assets/img/img2.png'
      // },
      // {
      //   'image':
      //       'https://github.com/anuragdandge/car_rental/blob/master/assets/img/img3.png'
      // },
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
