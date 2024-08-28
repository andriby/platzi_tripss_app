import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget{
    String name = "Varuna Yasas";
    String details = "1 review 5 photos";
    int stars = 3;
    String comment = "There is an amazing place in Sri Lanka";
    String imagePath = 'assets/images/people.jpg';
    Review(this.imagePath ,this.name, this.details, this.comment, this.stars, {super.key});

  @override
    Widget build(BuildContext context) {
      final starBorder = Container(
      margin: const EdgeInsets.only(
        left: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0XFFf2C611),
        size: 13.0,
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        left: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0XFFf2C611),
        size: 13.0,
      ),
    );

      final userName = Container(
        margin: const EdgeInsets.only(
          left: 20.0
        ),
        child: Text(
          name,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 17.0,
          ),
        ),
      );

      final userInfo = Container(
        margin: const EdgeInsets.only(
          left: 20.0
        ),
        child: Text(
          details,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
          ),
        ),
      );

      final userComment = Container(
        margin: const EdgeInsets.only(
          left: 20.0
        ),
        child: Text(
          comment,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w900
          ),
        ),
      );

      final userDetails = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userName,
          Row(
            children: <Widget>[
              userInfo,
              for (var i = 0; i < stars; i++) star,
              for (var i = 0; i < 5 - stars; i++) starBorder
            ],
          ),
          userComment
        ]
      );

      final photo = Container(
        margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0
        ),
        width: 65.0,
        height: 65.0,
        decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover
              ),          
              shape: BoxShape.circle,
        ),
      );
    
      return Row(
        children: <Widget>[
          photo,
          userDetails,
        ],
      );
    }
}