import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Banner1 extends StatelessWidget {
  final String captionBanner;
  const Banner1({super.key, required this.captionBanner});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 7,
      children: [
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [Colors.blue, Colors.cyan]),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey, // warna bayangan
            //     spreadRadius: 1, // seberapa melebar
            //     blurRadius: 5, // seberapa blur
            //     offset: const Offset(2, 3), // posisi bayangan (x,y)
            //   ),
            // ],
          ),
          child: Center(
            child: Text(
              captionBanner,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
