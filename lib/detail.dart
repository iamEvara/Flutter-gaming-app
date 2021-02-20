import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class Detail extends StatelessWidget {
  final list;

  const Detail({Key key, this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  image: DecorationImage(
                    image: AssetImage(list['wallpaper']),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
            Text(
              list['name'],
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Roboto',
                  color: Palette.extra,
                  fontSize: 27,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              list['gamers'],
              textAlign: TextAlign.left,
              style: GoogleFonts.getFont('Montserrat',
                  color: Colors.grey,
                  fontSize: 14,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
              child: Text(
                list['desc'],
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont('Roboto',
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width * 0.70,
              height: 50,
              decoration: BoxDecoration(
                  color: Palette.accent,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                  child: Text(
                'Hire a coach',
                style: GoogleFonts.getFont('Roboto',
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }
}
