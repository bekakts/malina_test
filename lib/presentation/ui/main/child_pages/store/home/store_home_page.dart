import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../base/qr_denied_dialog.dart';
import '../../../../../routing/app_router.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import '../../../../../utils/app_strings.dart';
import '../../../../../utils/extension/permission_ex.dart';
import '../widget/qr_store.dart';
import '../widget/search_field.dart';
import '../widget/store_card.dart';
import '../widget/store_list.dart';

@RoutePage()
class StoreHomePage extends StatefulWidget {
  const StoreHomePage({super.key});

  @override
  State<StoreHomePage> createState() => _StoreHomePageState();
}

class _StoreHomePageState extends State<StoreHomePage> {
  @override
  Widget build(BuildContext context) {
    return _buildStoreHome();
  }

  Widget _buildStoreHome() {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              buildSearchField(),
              buildQrStore(
                onTap: () {
                  requestCameraPermission(
                    onAccepted: () {
                      context.router.push(QrScannerRoute());
                    },
                    onPermissionDenied: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return buildQrDeniedDialog(context: context);
                        },
                      );
                    },
                  );
                },
              ),

              StoreCard(
                backgroundColor: AppColors.food,
                imagePath: AppImages.food,
                title: AppStrings.food,
                description: AppStrings.fromRestaurant,
                onTap: () {
                  context.pushRoute(SectionRoute());
                },
              ),
              const SizedBox(height: 20),
              StoreCard(
                backgroundColor: AppColors.pink,
                imagePath: AppImages.product,
                title: AppStrings.product,
                description: AppStrings.fromProduct,
                onTap: () {},
              ),
              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  AppStrings.soonInMalina,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: AppColors.darkBlack,
                  ),
                ),
              ),
              const SizedBox(height: 8),

              buildHorizontalStoreList(),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
