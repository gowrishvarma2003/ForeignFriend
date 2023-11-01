import 'package:flutter/material.dart';

class home extends StatefulWidget {
  State<StatefulWidget> createState() => _homestate();
}

class _homestate extends State<home> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    AboutPage(),
    SettingsPage(),
    profile()
  ];

  Widget build(BuildContext context) {
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'My rides'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'My rides'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          // BottomNavigationBarItem(
          //     icon: Image.asset(
          //       "assets/images/vechile_register.png"  ,
          //       width: 24,
          //       height: 24,
          //     ) ,
          //     label: 'Register'),
        ],
        selectedItemColor: Colors.black,
      ),
      body: _pages[_currentIndex],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page'),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('About Page'),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Page'),
    );
  }
}

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('profile page'),
    );
  }
}