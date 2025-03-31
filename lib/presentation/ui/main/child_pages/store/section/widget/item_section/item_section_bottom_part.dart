import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';
import 'package:malina_test/presentation/utils/app_icons.dart';

class ItemSectionBottomPart extends StatelessWidget {
  const ItemSectionBottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 12,
      runSpacing: 12,
      children: [
        _buildSectionItems(title: "4,5", iconAssets: AppIcons.star),
        _buildSectionItems(title: "5 км", iconAssets: AppIcons.way),
        _buildSectionItems(title: "5%", iconAssets: AppIcons.coin),
      ],
    );
  }

  Widget _buildSectionItems({
    required String title,
    required String iconAssets,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(iconAssets),
        SizedBox(width: 3),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
