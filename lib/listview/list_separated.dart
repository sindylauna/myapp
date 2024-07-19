import 'package:flutter/material.dart';

class ListSeparated extends StatelessWidget {
  
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
        title: Text("FlutterListViews"),

      ),
     body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
          );
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(androidVersions[index]),
          );
        },
        itemCount: androidVersions.length,
     ),
    );
  }
}