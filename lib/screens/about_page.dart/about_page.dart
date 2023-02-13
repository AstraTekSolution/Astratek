import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text(
          'About',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
