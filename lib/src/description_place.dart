import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget{
    String namePlace;
    int stars;
    String descriptionPlace;

    DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace, {super.key});

  @override
  Widget build(BuildContext context) {

    final starBorder = Container(
      margin: const EdgeInsets.only(
        top: 303.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0XFFf2C611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 303.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0XFFf2C611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 300.0,
            left: 20.0,
            right: 20.0
          ),

          child: Text(
            namePlace,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            for (var i = 0; i < stars; i++) star,
            for (var i = 0; i < 5 - stars; i++) starBorder
          ],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Column(
        children: [
          Text(
            descriptionPlace,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFF56575a),
              // fontFamily: "Lato"
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 15),
        ],
      ),
    );

    return Column(
      children: <Widget>[
        titleStars,
        description
      ],
    );
  }
}