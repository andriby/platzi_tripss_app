import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/people.jpg" ,"Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka", 3),
        Review("assets/images/ann.jpg", "Ann Mc", "2 review 5 photos", "There is an amazing place in Sri Lanka", 2),
        Review("assets/images/girl.jpg", "Zareth Fuentes", "1 review 5 photos", "There is an amazing place in Sri Lanka", 4),
      ]
    );
  }
}