import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_rounded),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting',
        ),
      ],
      // currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      // onTap: _onItemTapped,
    );
  }
}
