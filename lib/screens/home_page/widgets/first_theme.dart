import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Powering\nbusinesses\nwith\ninnovative\napp\nsolutions.",
                style: GoogleFonts.titilliumWeb(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                  "As an app development agency, Astratek works to\nbring your innovative app solutions to life.",
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 20,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                  )),
            ),
            // MaterialButton(
            //   color: Colors.white,
            //   shape: const RoundedRectangleBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(20.0))),
            //   onPressed: () {},
            //   child: const Padding(
            //     padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            //     child: Text(
            //       "Our Packages",
            //       style: TextStyle(color: Colors.red),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: SvgPicture.asset(
          'assets/images/firstone.svg',
          // height: 500,
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
