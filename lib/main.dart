import 'package:flutter/material.dart';
import 'package:myapp/berita/beranda.dart';
import 'package:myapp/berita/beritaterkini.dart';
import 'screen/about_screen.dart';
import 'screen/home_screen.dart';
import 'screen/wisata_screen.dart';
import 'berita/beranda.dart';
import 'berita/about_berita.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) => const BerandaLatihan(),
        '/about': (context) => const AboutBerita(),
        '/berita': (context) => ListBerita(),
       
      },
      initialRoute: "home",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: BerandaLatihan(),
      ),
    );
  }
}