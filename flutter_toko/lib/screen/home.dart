import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_toko/screen/banner.dart';
import 'package:flutter_toko/screen/cart_barang.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Toko Online',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Icon(Icons.store, color: Colors.white),
          ],
        ),
      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Info Toko Hari Ini",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: [
                      Banner1(captionBanner: "Diskon 50%"),
                      Banner1(captionBanner: "Barang Baru"),
                      Banner1(captionBanner: "GLEDEK 11.11"),
                      Banner1(captionBanner: "OKE GAS!"),
                      Banner1(captionBanner: "Toko Online"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "List Produk",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  shrinkWrap: true, // jangan lupa
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    CartBarang(
                      fotoProduk: "images/product1.jpeg",
                      title: "Sharaa Parfume",
                      price: "Rp 50.000",
                    ),
                    CartBarang(
                      fotoProduk: "images/product2.jpeg",
                      title: "SpinDrinks",
                      price: "Rp 50.000",
                    ),
                    CartBarang(
                      fotoProduk: "images/product3.jpeg",
                      title: "Secret Serum -Lime",
                      price: "Rp 50.000",
                    ),
                    CartBarang(
                      fotoProduk: "images/product4.jpeg",
                      title: "JBL ngeBASSS",
                      price: "Rp 50.000",
                    ),
                    CartBarang(
                      fotoProduk: "images/product5.jpeg",
                      title: "LUKA | Minyak Kemiri",
                      price: "Rp 50.000",
                    ),
                    CartBarang(
                      fotoProduk: "images/product1.jpeg",
                      title: "Sharaa Parfume",
                      price: "Rp 50.000",
                    ),
                    CartBarang(
                      fotoProduk: "images/product2.jpeg",
                      title: "SpinDrinks",
                      price: "Rp 50.000",
                    ),
                    CartBarang(
                      fotoProduk: "images/product3.jpeg",
                      title: "Secret Serum -Lime",
                      price: "Rp 50.000",
                    ),
                    CartBarang(
                      fotoProduk: "images/product4.jpeg",
                      title: "JBL ngeBASSS",
                      price: "Rp 50.000",
                    ),
                    CartBarang(
                      fotoProduk: "images/product5.jpeg",
                      title: "LUKA | Minyak Kemiri",
                      price: "Rp 50.000",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
