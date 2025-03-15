import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';
import 'package:malina_test/presentation/utils/app_icons.dart';
import 'package:malina_test/presentation/utils/app_strings.dart';

/// Wrap your Container with Material + InkWell to get tap feedback and a clean, modern approach.
/// Provide an onTap callback so the parent or caller decides what to do when tapped.
Widget buildQrStore({
  required VoidCallback onTap,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0, left: 20, right: 20, top: 14),
    child: Material(
      color: AppColors.malina,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 11),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.storeQr),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  AppStrings.scanNow,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

