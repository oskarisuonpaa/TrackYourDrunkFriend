import 'package:flutter/material.dart';
import 'package:flutter_app/homePage.dart';
import 'package:flutter_app/profilePage.dart';
import 'package:flutter_app/chatsPage.dart';
import 'package:flutter_app/settingsPage.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;
  List<Widget> options = <Widget>[
    Home(),
    Chats(),
    Profile(),
    Settings()
  ];

  void onItemTap(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track your drunk friend'),
      ),
      body: Center(
        child: options.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.black,),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box, color: Colors.black,),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black,),
            label: 'Settings',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTap,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
