import 'package:flutter/material.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/section/widget/section_ui.dart';
import 'package:malina_test/presentation/utils/app_images.dart';


class ItemSectionCategory extends StatelessWidget {
  final SectionUI item;

  const ItemSectionCategory({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 74,
          height: 74,
          child: ClipOval(
            child: Image.asset(
              AppImages.food,
              width: 74,
              height: 74,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 2),
        Text(
          item.title,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}