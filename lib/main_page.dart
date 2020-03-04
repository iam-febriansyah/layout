import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'colors_theme.dart';
import 'profile.dart';

import 'home.dart';
import 'notifications.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    Home(),
    Notifications(),
    Profile()
  ];

  _onItemTap(int index){
    setState(() {
     _selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.dashboard),
            title: Text(
              "Home",
              style: TextStyle(

              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text(
              "Notifications",
              style: TextStyle(
                
              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.user),
            title: Text(
              "Profile",
              style: TextStyle(
                
              ),
            )
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorsTheme.primary1,
        unselectedItemColor: ColorsTheme.line1,
        onTap: _onItemTap,
      ),
      
    );
  }
}