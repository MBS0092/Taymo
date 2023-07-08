import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OneValueCard extends StatelessWidget {
  final String value;
  final Color clr;
  final Color? txtClr;

  const OneValueCard({required this.value, required this.clr, this.txtClr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      child: Card(
        color: clr,
        elevation: 10,
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    value,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      color: txtClr ?? Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

