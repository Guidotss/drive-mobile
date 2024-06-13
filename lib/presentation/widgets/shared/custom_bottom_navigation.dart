import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined), label: "Favorites"),
        BottomNavigationBarItem(
            icon: Icon(Icons.share_outlined), label: "Shared"),
        BottomNavigationBarItem(
            icon: Icon(Icons.file_copy_rounded), label: "Files"),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
