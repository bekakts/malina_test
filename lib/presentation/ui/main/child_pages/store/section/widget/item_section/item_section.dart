import 'package:flutter/material.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/section/widget/item_section/item_section_bottom_part.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/section/widget/item_section/item_section_top_part.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';

class ItemSection extends StatelessWidget {
  const ItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16,right: 20,left: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color(0x263C4451),
            offset: const Offset(0, 4),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemSectionTopPart(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Munchen Pub",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: AppColors.black,
              ),
            ),
          ),
          SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ItemSectionBottomPart(),
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
