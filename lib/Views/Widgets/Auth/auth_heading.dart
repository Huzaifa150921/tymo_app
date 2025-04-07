import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String maintext;
  final String subtext;
  final String logo;
  final double logosize;
  final double fontsize;

  const AuthHeading({
    super.key,
    required this.maintext,
    required this.subtext,
    required this.logo,
    required this.logosize,
    required this.fontsize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Row(
          children: [
            Text(
              maintext,
              style: GoogleFonts.poppins(
                color: const Color(0xff00205C),
                fontSize: fontsize,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: logosize,
              width: logosize,
              child: Image.asset(
                logo,
                filterQuality: FilterQuality.high,
              ),
            )
          ],
        ),
        Text(
          subtext,
          style: GoogleFonts.poppins(
            color: const Color(0xff00205C),
            fontSize: fontsize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
