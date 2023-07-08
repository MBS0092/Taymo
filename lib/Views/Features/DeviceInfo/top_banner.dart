import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBanner extends StatelessWidget {
  final String title;
  final List<Color> clr;

  const TopBanner({required this.title, required this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: clr),
      ),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: GoogleFonts.nunito(
          fontWeight: FontWeight.w900,
          color: Colors.white,
          fontSize: 20,
          letterSpacing: 2,
        ),
      ),
    );
  }
}
