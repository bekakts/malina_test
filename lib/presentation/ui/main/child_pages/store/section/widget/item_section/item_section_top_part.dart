import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina_test/presentation/utils/app_icons.dart';

import '../../../../../../../utils/app_colors.dart';
import '../../../../../../../utils/app_images.dart';

class ItemSectionTopPart extends StatelessWidget {
  const ItemSectionTopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: Image.asset(
            AppImages.food,
            height: 155,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(top: 10, left: 11, child: _buildSectionTime()),
        Positioned(left: 11, bottom: 12, child: _buildSectionOpenTime()),
        Positioned(top: 10, right: 10, child: _buildSectionFavoriteButton()),
      ],
    );
  }

  Widget _buildSectionFavoriteButton() {
    return ClipOval(
      child: Container(
        color: AppColors.white,
        padding: const EdgeInsets.only(top: 10, bottom: 9, left: 9, right: 9),
        child: Icon(Icons.favorite_border, color: Color(0xFFA2A1A4)),
      ),
    );
  }

  Widget _buildSectionOpenTime() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(AppIcons.lock),
          SizedBox(width: 8),
          Text(
            "Откроется завтра в 09:00",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTime() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(AppIcons.time),
          SizedBox(width: 8),
          Text(
            "25-30 мин",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
