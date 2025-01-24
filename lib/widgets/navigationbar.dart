import 'package:flutter/material.dart';
import '../screen/activity_screen.dart';
import '../screen/home_screen.dart';
import '../screen/user_screen.dart';

class CustomNav extends StatefulWidget {
  const CustomNav({super.key});

  @override
  State<CustomNav> createState() => _CustomNavState();
}

class _CustomNavState extends State<CustomNav> {
  int _selectedIndex = 0;

  final List<IconData> _icons = [
    Icons.home_outlined,
    Icons.fitness_center_outlined,
    Icons.person
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const HomeScreen(),
    const ActivityScreen(),
    const UserScreen()
    // SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_icons.length, (index) {
            return GestureDetector(
              onTap: () => _onItemTapped(index),
              child: AnimatedContainer(
                height: 50,
                width: 50,
                duration: const Duration(milliseconds: 300),

                decoration: BoxDecoration(
                  color: _selectedIndex == index
                      ? Colors.black
                      : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  _icons[index],
                  color: _selectedIndex == index ? Colors.white : Colors.black,
                  size: 28,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
