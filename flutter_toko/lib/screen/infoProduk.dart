import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Infoproduk extends StatelessWidget {
  final String fotoProduk;
  const Infoproduk({super.key, required this.fotoProduk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Info Produk",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(fotoProduk),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft, child: Text("Nama Produk")),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Bla Bla Bla Bla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla BlaBla Bla Bla",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
