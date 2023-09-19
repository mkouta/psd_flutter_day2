import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(LayoutApp());

class LayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'layout',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My layout App'),
        ),
        body: Column(

          children: <Widget>[
        Image.network('https://raw.githubusercontent.com/flutter/website/main/examples/layout/lakes/step5/images/lake.jpg',
            height: 240,width: 600,fit: BoxFit.fitWidth
                                   ),

            titleSection,
            btnSection
          
          ,Container(
              margin: EdgeInsets.all(32),
              child:Text( 'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,)
            )
          ],
        )

        ,
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),

      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41'),
    ],
  ),
);

Widget btnSection= Container(
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(Icons.call,color: Colors.blueGrey),
          Text("CALL",style: TextStyle(color:Colors.blueGrey ),)
        ],
      )
,
    Column(
        children: [
        Icon(Icons.near_me,color: Colors.blueGrey),
        Text("ROUTE",style: TextStyle(color:Colors.blueGrey ),)
    ],
  ),
      Column(
        children: [
          Icon(Icons.share,color: Colors.blueGrey),
          Text("SHARE",style: TextStyle(color:Colors.blueGrey ),)
        ],
      )
    ])
)
;