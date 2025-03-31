import 'package:flutter/material.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/section/widget/item_section_category.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/section/widget/section_ui.dart';

class SectionCategoryList extends StatelessWidget {
  final List<SectionUI> items;

  const SectionCategoryList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 100),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        separatorBuilder: (context, _) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final item = items[index];
          return ItemSectionCategory(item: item);
        },
      ),
    );
  }
}
