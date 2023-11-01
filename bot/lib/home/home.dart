import 'package:flutter/material.dart';
import 'package:bot/home/add.dart';
import 'package:bot/home/search.dart';
import 'package:bot/home/profile.dart';
import 'package:bot/home/homepage.dart';

class home extends StatefulWidget {
  var email;
  home({required this.email});
  State<StatefulWidget> createState() => _homestate();
}

class _homestate extends State<home> {
  int _currentIndex = 0;

  Widget build(BuildContext context) {
      var email = widget.email;
  final List<Widget> _pages = [homepage(), search(), add(email:email), profile()];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          // BottomNavigationBarItem(
          //     icon: Image.asset(
          //       "assets/images/vechile_register.png"  ,
          //       width: 24,
          //       height: 24,
          //     ) ,
          //     label: 'Register'),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
      body: _pages[_currentIndex],
    );
  }
}
