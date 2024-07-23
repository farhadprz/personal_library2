import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Theme.of(context).colorScheme.primary,),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books, color: Theme.of(context).colorScheme.primary,),
          label: 'Library',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Theme.of(context).colorScheme.primary,),
          label: 'Settings',
        ),
      ],
      selectedItemColor: Theme.of(context).colorScheme.secondary,
      unselectedItemColor: Theme.of(context).colorScheme.primary,
    );
  }
}
