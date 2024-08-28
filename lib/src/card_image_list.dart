import 'package:flutter/material.dart';
import 'card_image.dart';
class CardImageList extends StatelessWidget{
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context){

    // ignore: sized_box_for_whitespace
    return Container(
      height: 300.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('assets/images/beach.jpeg'), 
          CardImage('assets/images/mountain.jpeg'),
          CardImage('assets/images/mountain_stars.jpeg'),
          CardImage('assets/images/sunset.jpeg'),
          CardImage('assets/images/river.jpeg'),
          CardImage('assets/images/beach_palm.jpeg'),
        ] 
      ),
    );
  }
}