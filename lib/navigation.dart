import 'package:brain_kid/Screens/home_screen.dart';
import 'package:brain_kid/Screens/setting.dart';
import 'package:brain_kid/Screens/user_info.dart';
import 'package:flutter/material.dart';

class NavigateScreens extends StatefulWidget {
  const NavigateScreens({super.key});

  @override
  State<NavigateScreens> createState() => _NavigateScreensState();
}

class _NavigateScreensState extends State<NavigateScreens> {
  int _selectedIndex = 0;
  static const List<Widget> screens = <Widget>[
    Homescreen(),
    Setting(),
    UserInfo()
  ];

  void updateScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          height: 100,
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 15),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 40,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    size: 40,
                  ),
                  label: "Setting"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  label: "Personal"),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.red,
            onTap: updateScreen,
            elevation: 0,
            enableFeedback: false,
          ),
        ),
      ),
    );
  }
}
