import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../ui/main/child_pages/favorite/favorite_page.dart';
import '../ui/main/child_pages/profile/profile_page.dart';
import '../ui/main/child_pages/shopping_cart/food/food_page.dart';
import '../ui/main/child_pages/shopping_cart/product/product_page.dart';
import '../ui/main/child_pages/store/home/store_home_page.dart';
import '../ui/main/child_pages/store/section/section_page.dart';
import '../ui/main/child_pages/store/store_page.dart';
import '../ui/main/main_page.dart';
import '../ui/qr/qr_scanner_page.dart';
import '../ui/qr/success/success_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      initial: true,
      page: MainRoute.page,
      children: [
        AutoRoute(
          page: StoreRoute.page,
          initial: true,
          children: [
            AutoRoute(page: StoreHomeRoute.page, initial: true),
            AutoRoute(page: SectionRoute.page),
          ],
        ),
        AutoRoute(page: FavoriteRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: FoodRoute.page),
        AutoRoute(page: ProductRoute.page),
      ],
    ),
    AutoRoute(page: QrScannerRoute.page),
    AutoRoute(page: SuccessRoute.page),
  ];
}
