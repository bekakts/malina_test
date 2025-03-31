import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../utils/app_colors.dart';
import '../../../../../../utils/app_icons.dart';

class SectionSearchBar extends StatelessWidget {
  const SectionSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Поиск',
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.hintColor,
        ),
        filled: true,
        fillColor: AppColors.background,
        isDense: true,
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 18, right: 11),
          child: SvgPicture.asset(AppIcons.sectionSearch),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.black,
      ),
    );
  }
}
