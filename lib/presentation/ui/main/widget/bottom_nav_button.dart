import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_colors.dart';
// import 'package:malina_test/presentation/utils/app_colors.dart'; // Use your actual color imports

class BottomNavButton extends StatelessWidget {
  final bool isSelected;
  final String tabTitle;
  final String icon;
  final VoidCallback onTap;
  final double buttonSize;

  const BottomNavButton({
    super.key,
    required this.isSelected,
    required this.tabTitle,
    required this.icon,
    required this.onTap,
    this.buttonSize = 50.0, // default diameter
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: buttonSize,
        height: buttonSize,
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.white,
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  icon,
                  colorFilter: ColorFilter.mode(
                    isSelected ? AppColors.malina : AppColors.darkGrey,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(height: 2),
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
        ),
      ),
    );
  }
}
