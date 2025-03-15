import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';
import 'package:malina_test/presentation/utils/app_icons.dart';
import 'package:malina_test/presentation/utils/app_strings.dart';

Widget buildQrStore() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0, left: 20, right: 20, top: 14),
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.malina,
        borderRadius: BorderRadius.circular(12),
      ),
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
  );
}
