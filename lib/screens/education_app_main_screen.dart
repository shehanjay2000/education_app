import 'package:education_app/UI/utils/color.dart';
import 'package:education_app/screens/featured_screen.dart';
import 'package:flutter/material.dart';

class EducationAppMainScreen extends StatefulWidget {
  const EducationAppMainScreen({super.key});

  @override
  State<EducationAppMainScreen> createState() => _EducationAppMainScreenState();
}

class _EducationAppMainScreenState extends State<EducationAppMainScreen> {
  int selectedIndex = 0;
  static const List<Widget> _selectedPage = <Widget>[
    FeaturedScreen(),
    Scaffold(body: Center(child: Text("Learning"))),
    Scaffold(body: Center(child: Text("Certificates"))),
    Scaffold(body: Center(child: Text("Setting"))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _selectedPage.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        iconSize: 26,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.star),
            icon: Icon(Icons.star_border),
            label: "Featured",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.play_circle),
            icon: Icon(Icons.play_circle_outline),
            label: "Learning",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.card_membership),
            icon: Icon(Icons.card_membership_outlined),
            label: "Certificates",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_outlined),
            label: "Setting",
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
