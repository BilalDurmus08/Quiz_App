import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle extends StatelessWidget {
  const MyTextStyle({required this.message, super.key, required this.fontSizeMy});
  final String message;
  final double fontSizeMy;
   

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: GoogleFonts.archivo(
          color: const Color.fromARGB(255, 229, 201, 233),
          fontSize: fontSizeMy,
          fontWeight: FontWeight.w500
          ),
    );
  }
}
