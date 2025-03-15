import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';

Widget bottomNavButton(
  double buttonSize,
  bool isSelected,
  String tabTitle,
  String icon,
  VoidCallback onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: CircleAvatar(
      radius: buttonSize / 2,
      backgroundColor: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColors.malina : AppColors.darkGrey,
              BlendMode.srcIn, // This ensures the source SVG is tinted
            ),
          ),
          const SizedBox(height: 1),
          Text(
            tabTitle,
            style: TextStyle(
              fontSize: 10,
              color: isSelected ? AppColors.malina : AppColors.darkGrey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
