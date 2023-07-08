
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerListTile extends StatelessWidget {
  final IconData iconName;
  final String tileTitle;

  DrawerListTile({required this.iconName, required this.tileTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: ListTile(
        title: Container(
          alignment: Alignment.center,
          height: 50,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(
                    iconName,
                  color: Color(0xff00D7CC),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  tileTitle,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: Color(0xff2a3d66),
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      letterSpacing: 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
