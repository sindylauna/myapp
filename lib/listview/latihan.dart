import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LatihanListview extends StatelessWidget {
  final List<Map<String, dynamic>>data = [
    {'name': 'Ujang Balok',
     'umur': 38,
      'alamat': 'Bojong Honey',
      'photo': [
        'https://i.pinimg.com/originals/d0/ae/e7/d0aee7ca01803df843dd0554207eb380.jpg',
        'https://i.pinimg.com/originals/af/d8/97/afd897c531cec931e4903ab98ce4803d.jpg',
        'https://i.pinimg.com/originals/a3/2c/94/a32c947afd620ba53de48a21b29fad64.jpg',
        'https://i.pinimg.com/736x/b0/69/31/b06931fe6bdfb84cce8653d5eada416d.jpg',
      ]
    },
    {'name': 'Mahmud Alexander',
     'umur': 28, 
    'alamat': 'Sukolilo',
    'photo': [
        'https://i.pinimg.com/originals/d0/ae/e7/d0aee7ca01803df843dd0554207eb380.jpg',
        'https://i.pinimg.com/originals/af/d8/97/afd897c531cec931e4903ab98ce4803d.jpg',
        'https://i.pinimg.com/originals/a3/2c/94/a32c947afd620ba53de48a21b29fad64.jpg',
        'https://i.pinimg.com/736x/b0/69/31/b06931fe6bdfb84cce8653d5eada416d.jpg',
    ]
    },
    {'name': 'Aceng Ferdinand',
     'umur': 18, 
     'alamat': 'Heulang Honey',
     'photo':[
        'https://i.pinimg.com/originals/d0/ae/e7/d0aee7ca01803df843dd0554207eb380.jpg',
        'https://i.pinimg.com/originals/af/d8/97/afd897c531cec931e4903ab98ce4803d.jpg',
        'https://i.pinimg.com/originals/a3/2c/94/a32c947afd620ba53de48a21b29fad64.jpg',
        'https://i.pinimg.com/736x/b0/69/31/b06931fe6bdfb84cce8653d5eada416d.jpg',
     ]
    },
    {'name': 'DD Nun',
     'umur': 98,
      'alamat': 'Pameungpek',
      'photo':[
        'https://i.pinimg.com/originals/d0/ae/e7/d0aee7ca01803df843dd0554207eb380.jpg',
        'https://i.pinimg.com/originals/af/d8/97/afd897c531cec931e4903ab98ce4803d.jpg',
        'https://i.pinimg.com/originals/a3/2c/94/a32c947afd620ba53de48a21b29fad64.jpg',
        'https://i.pinimg.com/736x/b0/69/31/b06931fe6bdfb84cce8653d5eada416d.jpg',
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8),
          //color:  Colors.grey,
          borderOnForeground: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('nama :${data[index]['name']}'),
                Text('umur :${data[index]['umur']}'),
                Text('alamat :${data[index]['alamat']}'),
                Text('galeri'),
                SizedBox(
                height: 100,
               child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data[index]['photo'].length,
                    itemBuilder: (context, imgIndex) {
                      return Container(
                      margin: EdgeInsets.only(right:5),
                        child: Image.network(
                          data[index]['photo'][imgIndex],
                          fit: BoxFit.cover,
                          width: 100,
                          ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}