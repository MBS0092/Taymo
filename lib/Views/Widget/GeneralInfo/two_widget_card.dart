import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoWidgetCard extends StatelessWidget {
  final String text1;
  final String value1;
  final Widget? subWidget1;
  final Color? clr1;
  final Color? txtclr1;

  final String text2;
  final String value2;
  final Widget? subWidget2;
  final Color? clr2;
  final Color? txtclr2;

  const TwoWidgetCard(
      {required this.text1,
      required this.value1,
      this.subWidget1,
      this.clr1,
      this.txtclr1,
      required this.text2,
      required this.value2,
      this.subWidget2,
      this.clr2,
      this.txtclr2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: clr1 ?? Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    text1,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  subWidget1 ??
                      Text(
                        value1,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          color: txtclr1 ?? Color(0xFFF57D7C),
                          fontSize: 18,
                        ),
                      ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    text2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  subWidget2 ??
                      Text(
                        value2,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          color: txtclr2 ?? Color(0xFFF57D7C),
                          fontSize: 18,
                        ),
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
