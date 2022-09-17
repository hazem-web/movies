import 'package:animation/screens/detail%20screen.dart';
import 'package:animation/screens/home_screen.dart';
import 'package:flutter/material.dart';


import '../screens/search_screen.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  List screens = [
    HomeScreen(),
    SearchScreen(),
  ];
int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Netflix",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic),)),
      ),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),

        currentIndex: index,
        onTap: (value) {
          setState(() {
            index=value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black),
              label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.black,),
              label: "Search"

          )
        ],

      ),
    );
  }
}
