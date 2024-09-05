import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/src/home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips>{

  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    const SearchTrips(),
    const ProfileTrips()
  ];
  
    void onTapTapped(int index){
      setState(() {
        indexTap = index;
      });
    }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ''
            ),
          ],
        )
      ),
    );
  }
}