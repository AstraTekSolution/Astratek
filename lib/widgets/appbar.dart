import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TekAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return WebAppBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return WebAppBar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("AstraTek Solution.",
                style: GoogleFonts.titilliumWeb(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )
                //  TextStyle(
                //     fontWeight: FontWeight.bold,
                //     color: Colors.white,
                //     // fontFamily: "Titillium Web",
                //     fontSize: 30),
                ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Home",
                    style: GoogleFonts.titilliumWeb(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Service",
                    style: GoogleFonts.titilliumWeb(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "About",
                    style: GoogleFonts.titilliumWeb(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                // TextButton(
                //   onPressed: () {},
                //   child: const Text(
                //     "Contact Us",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
                // const SizedBox(
                //   width: 30,
                // ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  ),
                  icon: const Icon(Icons.discord),
                  onPressed: () {},
                  label: Text(
                    "Join",
                    style: GoogleFonts.titilliumWeb(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Column(children: <Widget>[
        Text("AstraTek.",
            style: GoogleFonts.titilliumWeb(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Home",
                  style: GoogleFonts.titilliumWeb(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Services",
                  style: GoogleFonts.titilliumWeb(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "About",
                  style: GoogleFonts.titilliumWeb(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
                icon: const Icon(Icons.discord),
                onPressed: () {},
                label: Text(
                  "Join",
                  style: GoogleFonts.titilliumWeb(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
