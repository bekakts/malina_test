import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottomNavButton(double buttonSize,
    bool isSelected,
    String tabTitle,
    IconData icon,
    VoidCallback onTap,) {
  return GestureDetector(
    onTap: onTap,
    child: CircleAvatar(
      radius: buttonSize / 2,
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isSelected ? Colors.red : Colors.grey),
          const SizedBox(height: 1),
          Text(
            tabTitle,
            style: const TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}