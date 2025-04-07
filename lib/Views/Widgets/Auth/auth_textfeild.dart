import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextfeild extends StatelessWidget {
  final String labeltext;
  final bool obsecuretxt;
  final IconData icon;
  final double fontsize;
  final double iconsize;
  final TextEditingController? controller;
  const AuthTextfeild(
      {super.key,
      required this.labeltext,
      required this.obsecuretxt,
      required this.icon,
      required this.fontsize,
      required this.iconsize,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecuretxt,
      decoration: InputDecoration(
        fillColor: const Color(0xffE7E7F2),
        filled: true,
        prefixIcon: Icon(
          icon,
          size: iconsize,
        ),
        prefixIconColor: const Color.fromARGB(255, 65, 206, 211),
        label: Text(
          labeltext,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontsize,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
