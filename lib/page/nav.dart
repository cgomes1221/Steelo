import 'package:flutter/material.dart';
import 'package:steelo/page/home_page.dart';

import 'explore.dart';
import 'favorites.dart';
import 'swipe.dart';
import 'mainuser_prof.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 2;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Favorites(
      url: '',
    ),
    Swipe(),
    Explore(),
    UserProf(
      url: '',
    ),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.amber,
              size: 30.0,
            ),
            title: Text(
              '',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              //Icons.close,
              Icons.favorite,
              color: Colors.red,
              size: 30.0,
            ),
            title: Text(
              '',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.swipe,
              color: Colors.blue,
              size: 30.0,
            ),
            title: Text(
              '',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.green,
              size: 30.0,
            ),
            title: Text(
              '',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.purple,
              size: 30.0,
            ),
            title: Text(
              '',
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
