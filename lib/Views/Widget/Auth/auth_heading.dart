import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String mainText;
  final String subText;
  final String logo;
  final double fontSize;
  final double logoSize;

  AuthHeading({
    required this.fontSize,
    required this.logo,
    required this.logoSize,
    required this.mainText,
    required this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              mainText,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xff000221),
                  fontWeight: FontWeight.bold),
            ),
            Container(
                height: logoSize,
                width: logoSize,
                child: Image.asset(logo,
                  filterQuality: FilterQuality.high,
                )),
          ],
        ),
        Text(
          subText,
          style: GoogleFonts.poppins(
              fontSize: 18,
              color: Color(0xff000221),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
