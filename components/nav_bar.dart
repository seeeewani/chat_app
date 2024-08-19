import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int CurrentTypeIndex = 0;

  late List<Widget> pages;
  late Widget Currentpage;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: const Color.fromARGB(255, 193, 189, 252),
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            CurrentTypeIndex = index;
          });
        },
        items: [
          const CurvedNavigationBarItem(
            child: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
          ),
          const CurvedNavigationBarItem(
            child: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: pages[CurrentTypeIndex],
    );
  }
}
