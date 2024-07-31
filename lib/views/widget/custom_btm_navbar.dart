import 'package:first_task/views/widget/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class CustomBtmNavbar extends StatelessWidget {
  const CustomBtmNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, -3),
          ),
        ],
      ),
      child: Stack(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavItem(icon: Icons.home, label: 'Home'),
              BottomNavItem(icon: Icons.edit_document, label: 'Book'),
              SizedBox(
                width: 80,
              ),
              BottomNavItem(icon: Icons.local_offer, label: 'Offer'),
              BottomNavItem(icon: Icons.menu, label: 'More'),
            ],
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              height: 60,
              width: 60,
              child: Image.asset('assets/images/bottom_logo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
