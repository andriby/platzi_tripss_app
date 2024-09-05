import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  @override
  Widget build(BuildContext context) {

  void onPressedFav() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Agregaste a tus favoritos'),
      ),
    );
  }

    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child: const Icon(Icons.favorite_border, color: Colors.white,),
    );
  }
}