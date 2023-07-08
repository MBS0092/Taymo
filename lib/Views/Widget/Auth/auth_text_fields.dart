import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final String labelText;
  final bool obscureText;
  final IconData icon;
  final double size;

  AuthTextField({
    required this.icon,
    required this.keyboardType,
    required this.size,
    required this.labelText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      autofocus: false,
      style: GoogleFonts.poppins(fontSize: 14),
      keyboardType: keyboardType,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          fillColor: Color(0xffE7E7F2),
          filled: true,
          prefixIcon: Icon(
            icon,
            size: size,
          ),
          prefixIconColor: Color(0xff00205c),
          label: Text(
            labelText,
          ),
          labelStyle:
          GoogleFonts.poppins(fontSize: 14, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
