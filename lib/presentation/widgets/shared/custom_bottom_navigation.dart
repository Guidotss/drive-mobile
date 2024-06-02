import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.widgets_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined), label: "Expenses"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_outlined), label: "Incomes"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: "Settings")
        ],
        type: BottomNavigationBarType.fixed,
      ); 
  }
}