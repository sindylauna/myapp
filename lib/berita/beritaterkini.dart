import 'package:flutter/material.dart';
import 'detail_berita.dart';

class ListBerita extends StatelessWidget {
  final List<Map<String, dynamic>> beritaData = [
    {
      "berita": "Banjir Di gorontalo",
      "sumber": "Detik.com",
      "image": "assets/images/banjir.jpeg",
      "gallery": [
        "assets/images/banjir4.jpeg",
        "assets/images/gambar1.jpg",
        "assets/images/gambar5.jpg"
      ],
      "desc": "Banjir di Kota Gorontalo meluas ke enam kecamatan.Titik terparah ada di Kecamatan Dumbo Raya"
    },
    {
      "berita": "Gempa Di Cianjur",
      "sumber": "News.com",
      "image": "assets/images/gambar7.jpg",
      "gallery": [
        "assets/images/gempa1.webp",
        "assets/images/gempa3.jpg",
        "assets/images/gempa5.jpg",
      ],
      "desc": "Kekuatan gempa Cianjur adalah magnitudo (M) 5,6. Gempa terjadi pukul 13.21 WIB, Senin (21/11)"
    },
    {
      "berita": "Kebakaran Pabrik Garmen",
      "sumber": "News.com",
      "image": "assets/images/berita1.jpg",
      "gallery": [
        "assets/images/berita2.jpg",
        "assets/images/berita3.jpg",
        "assets/images/berita4.png",
      ],
      "desc": "Upaya pemadaman masih dilakukan di pabrik garmen PT Hansol Indo Java di Randusari, Teras, Boyolali. Kebakaran diduga dari korsleting."
    },
    {
      "berita": "Longsor",
      "sumber": "News.com",
      "image": "assets/images/rancaupas.jpg",
      "gallery": [
        "assets/images/.jpg",
        "assets/images/.jpg",
        "assets/images/.jpg",
      ],
      "desc": "50 Hektare Sawah di Gununghalu KBB Tertimbun Longsor, Petani Gagal Panen · 10 Rumah Rusak dan 80 KK Mengungsi Akibat Longsor di Bandung Barat.."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinasi Wisata'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: beritaData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailBerita(
                        berita: beritaData[index]["berita"],
                        sumber: beritaData[index]["sumber"],
                        image: beritaData[index]["image"],
                        gallery: beritaData[index]["gallery"],
                        desc: beritaData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(beritaData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    beritaData[index]["berita"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}