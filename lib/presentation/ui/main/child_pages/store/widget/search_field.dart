import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/app_icons.dart';
import '../../../../../utils/app_strings.dart';

Widget buildSearchField() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Color(0x1A5F6773),
          offset: const Offset(0, 2),
          blurRadius: 20,
          spreadRadius: 0,
        ),
      ],
    ),
    child: TextField(
      textAlignVertical: TextAlignVertical.center,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 6, right: 12),
        hintText: AppStrings.searchFieldHint,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(AppIcons.search),
        ),
        border: InputBorder.none,
        isDense: true,
      ),
    ),
  );
}