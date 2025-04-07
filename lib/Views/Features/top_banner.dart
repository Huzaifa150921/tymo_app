import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key, required this.title, required this.color});
  final String title;
  final List<Color> color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w900,
            fontSize: 20,
            letterSpacing: 2,
            color: Colors.white),
      ),
    );
  }
}
