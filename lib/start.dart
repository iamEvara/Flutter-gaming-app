import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'home.dart';

class Start extends StatelessWidget {
  const Start({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.main,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Image.asset(
                "assets/controller.png",
                width: 250,
                height: 250,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Become better at video\n games in a second!",
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Roboto',
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Center(
                child: Text(
                  "Become a way better player with our mobile app! Never lose a game after our coaching from the best players in the world!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Roboto',
                      color: Palette.caption,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home())),
                child: Image.asset(
                  'assets/custom-button.png',
                  width: 60,
                  height: 60,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "10 million gamers rock with us!",
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont('Roboto',
                    color: Palette.caption,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
