import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/app_icons.dart';
import '../../../../../utils/app_strings.dart';

Widget buildSearchField() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Material(
      elevation: 2, // 4dp elevation for a subtle shadow
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: TextField(
          // Center the text (and hint) vertically
          textAlignVertical: TextAlignVertical.center,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            hintText: AppStrings.searchFieldHint,
            hintStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
            prefixIcon: SvgPicture.asset(AppIcons.search),
            border: InputBorder.none,
            isDense: true,
          ),
        ),
      ),
    ),
  );
}