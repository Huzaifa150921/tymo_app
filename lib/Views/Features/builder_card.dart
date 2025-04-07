import 'package:flutter/material.dart';

class BuilderCard extends StatelessWidget {
  const BuilderCard({super.key, required this.title, required this.clr});
  final String title;
  final Color clr;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          color: clr, // Assign background color
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title, // Assign status text
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
