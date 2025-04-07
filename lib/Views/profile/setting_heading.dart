import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingHeading extends StatelessWidget {
  const SettingHeading({super.key, required this.headingtext});
  final String headingtext;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      alignment: Alignment.centerLeft,
      child: Text(
        headingtext,
        textAlign: TextAlign.left,
        style: GoogleFonts.poppins(
            fontSize: 16, fontWeight: FontWeight.w900, color: Colors.purple),
      ),
    );
  }
}
