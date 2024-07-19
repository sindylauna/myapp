import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {

  var androidVersions=[
    "Android CupeCake",
    "Android Donus",
    "Android Eklair",
    "Android Froyo",
    "Android GingerBread",
    "Android Honey Comb",
    "Android  Iceream  Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lolipop",
    "Android Marsamallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Listview'),
      ),
    body: ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(0.8),
          child: Text(androidVersions[index]),

        );
      },
      itemCount: androidVersions.length,
    )
    );
  }
}