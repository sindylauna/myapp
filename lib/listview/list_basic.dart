 import 'package:flutter/material.dart';

class ListBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter ListView'),
      ),
      body: ListView(
        children:  [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android CupeCake"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Donus"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Eclair"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Froyo"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("GingerBread"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Honey Comb"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Icecream Sandwich"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Jelly Bean"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Kitkat"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Lolipop"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Marsamallow"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Nougat"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Oreo"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Pie"),
          ),   
        ],
      )
    );
  }
}
