import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malina_test/presentation/routing/app_router.dart';
import 'package:malina_test/presentation/ui/main/state/main_state.dart';
import 'package:malina_test/presentation/ui/main/widget/shopping_cart_container.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';
import 'package:malina_test/presentation/utils/app_icons.dart';
import 'package:malina_test/presentation/utils/app_strings.dart';
import 'dart:math' as math;
import '../../../utils/extension/permission_ex.dart';
import '../event/main_event.dart';
import '../main_bloc.dart';
import 'bottom_nav_button.dart';

class BottomNavBar extends StatelessWidget {
  final MainState state;
  final int currentIndex;
  final Function(int) onTabSelected;

  const BottomNavBar({
    super.key,
    required this.state,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final rawCalculatedHeight = screenWidth / 5 + 10;
    final calculatedHeight = math.max(rawCalculatedHeight, 60).toDouble();

    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Material(
            elevation: 8,
            color: Colors.transparent,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Container(
              height: calculatedHeight,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: _bottomNavBar(context),
          ),
        ),
      ],
    );
  }

  Widget _bottomNavBar(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    final screenWidth = MediaQuery.of(context).size.width;

    final rawButtonSize = screenWidth / 5 - 10;
    final bottomButtonSize = math.max(rawButtonSize, 40).toDouble();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            currentIndex == 0,
            AppStrings.store,
            AppIcons.store,
            () {
              mainBloc.add(const MainEvent.cartOverlayToggled(false));
              mainBloc.add(const MainEvent.updateShoppingCartType());
              onTabSelected(0);
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            currentIndex == 1,
            AppStrings.favorite,
            AppIcons.favorite,
            () {
              mainBloc.add(const MainEvent.cartOverlayToggled(false));
              mainBloc.add(const MainEvent.updateShoppingCartType());
              onTabSelected(1);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            width: bottomButtonSize,
            height: bottomButtonSize,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.malina,
                shape: const CircleBorder(),
                minimumSize: Size(bottomButtonSize, bottomButtonSize),
                elevation: 4,
              ),
              onPressed: () {
                mainBloc.add(const MainEvent.cartOverlayToggled(false));
                requestCameraPermission(
                  onAccepted: () {
                    context.router.push(QrScannerRoute());
                  },
                  showDeniedSnackBar: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(AppStrings.cameraPermissionDenied),
                      ),
                    );
                  },
                );
              },
              child: SvgPicture.asset(AppIcons.qr),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            currentIndex == 2,
            AppStrings.profile,
            AppIcons.profile,
            () {
              mainBloc.add(const MainEvent.cartOverlayToggled(false));
              mainBloc.add(const MainEvent.updateShoppingCartType());
              onTabSelected(2);
            },
          ),
        ),

        buildShoppingCartContainer(context, state, bottomButtonSize, (
          int selectedIndex,
        ) {
          onTabSelected(selectedIndex);
        }, currentIndex),
      ],
    );
  }
}
