import 'package:flutter/material.dart';
class LatihanRowColumn extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 200,
        color:Colors.blueGrey,
        child: Row(
        children:[
          Column(
            children: [
              Icon(Icons.phone),
              SizedBox(height: 8,),
              Text('Call'),

          ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.route),
              Text('Route'),

              
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Text('Share')
            ],
          )
        
       
          ],
      )

    )
    );
  }
}