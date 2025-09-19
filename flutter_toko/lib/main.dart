import 'package:flutter/material.dart';
import 'package:flutter_toko/screen/home.dart';
import 'package:flutter_toko/screen/infoProduk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // fontFamily: 'LibertinusKeyboard-Regular',
      ),
      home: Home(),
    );
  }
}
