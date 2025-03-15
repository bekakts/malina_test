import 'package:flutter/cupertino.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';
import 'package:malina_test/presentation/utils/app_strings.dart';

import '../../../../../model/store/store_item.dart';

Widget buildHorizontalStoreList() {
  final items = getStoreItemList();

  return SizedBox(
    height: 100,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      separatorBuilder: (context, _) => const SizedBox(width: 12),
      itemBuilder: (context, index) {
        final item = items[index];
        return buildStoreItem(color: item.backgroundColor, text: item.title);
      },
    ),
  );
}

Widget buildStoreItem({required Color color, required String text}) {
  return SizedBox(
    width: 98,
    height: 86,
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: AppColors.black,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}

List<StoreItem> getStoreItemList() {
  return [
    StoreItem(title: AppStrings.jobs, backgroundColor: AppColors.blue),
    StoreItem(title: AppStrings.market, backgroundColor: AppColors.market),
    StoreItem(title: AppStrings.flowers, backgroundColor: AppColors.pink),
    StoreItem(title: AppStrings.sport, backgroundColor: AppColors.green),
    StoreItem(title: AppStrings.sport, backgroundColor: AppColors.darkGreen),
    StoreItem(title: AppStrings.sport, backgroundColor: AppColors.grey),
  ];
}
