import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeviceSpecsCard extends StatelessWidget {
  const DeviceSpecsCard(
      {super.key, required this.maintext, required this.subtext});
  final String maintext;
  final String subtext;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        elevation: 12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              maintext,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              subtext,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.pink,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
