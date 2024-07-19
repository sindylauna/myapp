import 'package:flutter/material.dart';
class BelajarContainer extends StatelessWidget{
  const BelajarContainer({super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration( 
      color: Color.fromARGB(255, 157, 229, 231), 
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: NetworkImage('https://asset.kompas.com/crops/UahMqr_9qC0c6F3YWY9M9B0TQm0=/0x114:900x714/750x500/data/photo/2022/10/04/633ba85ce7dae.jpg'), 
        fit: BoxFit.cover,
        ),
      ),
      child:Center(child: Text("Wakanda Forever",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )

      ))
    );
  }
}