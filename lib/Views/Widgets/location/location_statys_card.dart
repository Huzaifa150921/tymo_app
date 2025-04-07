import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationStatysCard extends StatelessWidget {
  const LocationStatysCard(
      {super.key,
      this.clr,
      required this.maintext,
      this.icon,
      required this.width,
      this.clrtext,
      this.height,
      this.clricon});
  final Color? clr;
  final String maintext;
  final IconData? icon;
  final double width;
  final Color? clrtext;
  final double? height;
  final Color? clricon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 80,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          color: clr ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          elevation: 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Icon(
                  icon!,
                  size: 40,
                  color: clricon ?? Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
              ],
              Text(
                maintext,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: clrtext ?? Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
