import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettingSubfeild extends StatelessWidget {
  const ProfileSettingSubfeild(
      {super.key, required this.title, this.secodarywidget});
  final String title;
  final Widget? secodarywidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      color: Colors.transparent,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, color: Colors.black),
            ),
          ),
          secodarywidget ??
              Icon(
                Icons.arrow_back_ios,
                size: 14,
              ),
        ],
      ),
    );
  }
}
