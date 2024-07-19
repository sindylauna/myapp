import 'package:flutter/material.dart';
class BelajarColumn extends StatelessWidget {
  const BelajarColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('ini Colum 1 Text 1 '),
        Text('ini Colum 1 Text 2 '),
        Text('ini Colum 1 Text 3 '),
      ]
    );
  }
}