import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        ),
        Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Contact Us',
                    style: GoogleFonts.titilliumWeb(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                const contactwid(
                  heading: 'Email: ',
                  answer: 'astrateksolution@gmail.com',
                ),
                const contactwid(
                  heading: 'Phone: ',
                  answer: '+91 9061267606',
                ),
                const contactwid(
                  heading: 'Instagram: ',
                  answer: 'Astratek.in',
                ),
                // Container(
                //   height: 200,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //       color: const Color(0xff020714),
                //       borderRadius: BorderRadius.circular(20),
                //       border: Border.all(
                //         width: 1,
                //         color: Colors.white,
                //       )),
                // )
              ],
            )),
      ]),
    );
  }
}

class contactwid extends StatelessWidget {
  final String heading;
  final String answer;
  const contactwid({
    required this.heading,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          heading,
          style: GoogleFonts.titilliumWeb(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          answer,
          style: GoogleFonts.titilliumWeb(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
