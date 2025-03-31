import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/section/widget/item_section/item_section.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/section/widget/section_category_list.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/section/widget/section_search_bar.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/section/widget/section_ui.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';

@RoutePage()
class SectionPage extends StatefulWidget {
  const SectionPage({super.key});

  @override
  State<SectionPage> createState() => _SectionPageState();
}

class _SectionPageState extends State<SectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        top: true,
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SectionSearchBar(),
              ),
              SizedBox(height: 16),
              SectionCategoryList(items: getSectionUIList()),
              ItemSection(),
            ],
          ),
        ),
      ),
    );
  }

  List<SectionUI> getSectionUIList() {
    return [
      SectionUI(title: "Рестораны", image: ""),
      SectionUI(title: "Кафе", image: ""),
      SectionUI(title: "Бары", image: ""),
      SectionUI(title: "Кофейни", image: ""),
      SectionUI(title: "Фастфуд", image: ""),
    ];
  }
}
