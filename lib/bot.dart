import 'package:flutter/material.dart';
import 'package:ott/search.dart';
import 'dowload.dart';
import 'home.dart';

class abc extends StatefulWidget {
  const abc({super.key});

  @override
  State<abc> createState() => _abcState();
}

class _abcState extends State<abc> {

  int index = 0;


  final screens = [
    home(),
    home(),
    dowload(),
    search(),
  ];

  void tap(_index)
  {
    setState(() {
      index = _index;

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.storefront,color: Colors.black,),label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.download_outlined,color: Colors.black,),label: "Dowloads"),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label: "Search"),
          ],
          currentIndex: index,
          onTap: tap,

        )
    );
  }
}

