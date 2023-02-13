import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'Services',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
