import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientBack extends StatelessWidget{
  String title = "Popular";
  GradientBack(this.title, {super.key});

  @override
  Widget build(BuildContext context){

    return Container(
      height: 250.0,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
        )
      ),
      alignment: const Alignment(-0.9, -0.6),

      child: const Text(
        "Popular",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

}