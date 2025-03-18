import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/store_bloc.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/store_state.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/widget/qr_store.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/widget/search_field.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/widget/store_card.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/widget/store_list.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';
import 'package:malina_test/presentation/utils/app_images.dart';
import 'package:malina_test/presentation/utils/app_strings.dart';

import '../../../../../di/main_di.dart';
import '../../../../base/qr_denied_dialog.dart';
import '../../../../routing/app_router.dart';
import '../../../../utils/extension/permission_ex.dart';

@RoutePage()
class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  late final StoreBloc _storeBloc;

  @override
  void initState() {
    super.initState();
    _storeBloc = locator<StoreBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(
      bloc: _storeBloc,
      builder: (context, state) {
        return _buildStore();
      },
    );
  }

  Widget _buildStore() {
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
                onTap: (){
                  requestCameraPermission(
                    onAccepted: () {
                      context.router.push(QrScannerRoute());
                    },
                    onPermissionDenied: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return  buildQrDeniedDialog(context: context);
                          });
                    },
                  );
                }
              ),

              StoreCard(
                backgroundColor: AppColors.food,
                imagePath: AppImages.food,
                title: AppStrings.food,
                description: AppStrings.fromRestaurant,
                onTap: () {},
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
