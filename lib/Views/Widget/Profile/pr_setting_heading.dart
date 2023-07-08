import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class PrSettingHeading extends StatelessWidget {
  final String headingText;

  const PrSettingHeading({required this.headingText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      alignment: Alignment.centerLeft,
      child: Text(
        headingText,
        textAlign: TextAlign.left,
        style: GoogleFonts.nunito(
          fontWeight: FontWeight.w900,
          color: Color(0xff671AFC),
          fontSize: 16,
        ),
      ),
    );
  }
}
