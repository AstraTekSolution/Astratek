import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/appbar.dart';
import 'widgets/first_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020714),
      body: ListView(children: [
        // TekAppBar(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          child: LandingPage(),
        ),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.video_collection,
                color: Colors.black,
                size: 30,
              ),
              Text(
                'Play Video',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
