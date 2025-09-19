import 'package:flutter/material.dart';
import 'package:flutter_toko/screen/infoProduk.dart';
import 'package:google_fonts/google_fonts.dart';

class CartBarang extends StatefulWidget {
  final String fotoProduk;
  final String title;
  final String price;

  const CartBarang({
    super.key,
    required this.fotoProduk,
    required this.title,
    required this.price,
  });

  @override
  State<CartBarang> createState() => _CartBarangState();
}

class _CartBarangState extends State<CartBarang> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Infoproduk(
              fotoProduk: widget.fotoProduk,
              // title: widget.title,
              // price: widget.price,
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
                child: Image.asset(widget.fotoProduk, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.price,
                    style: GoogleFonts.poppins(
                      color: Colors.green,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.shopping_bag),
                        onPressed: () {
                          // aksi tombol beli
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_shopping_cart),
                        onPressed: () {
                          // aksi tambah ke keranjang
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () {
                          // aksi share produk
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
