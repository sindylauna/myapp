import 'package:flutter/material.dart';
class ExampleRowColumn extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey
        ),
        child:Center(
        child: Text('Home',
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
        )
      );

    
  }
}