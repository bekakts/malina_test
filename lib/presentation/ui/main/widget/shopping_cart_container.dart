import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina_test/presentation/utils/app_strings.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';

import '../../../utils/app_icons.dart';
import '../event/main_event.dart';
import '../main_bloc.dart';
import 'bottom_nav_button.dart';

Widget buildShoppingCartContainer(
  BuildContext context,
  bool isExpanded,
  double buttonSize,
  Function(int index) onTabSelected,
  int currentIndex,
) {
  final mainBloc = context.read<MainBloc>();

  const double spacing = 10.0;

  final double totalHeight = buttonSize * 3 + spacing * 2;

  final double containerHeight = (isExpanded ? totalHeight : buttonSize) + 10;
  final double containerWidth = buttonSize + 10;

  return AnimatedContainer(
    duration: const Duration(milliseconds: 200),
    curve: Curves.easeInOut,
    padding: const EdgeInsets.all(5.0),
    alignment: Alignment.bottomCenter,
    width: containerWidth,
    height: containerHeight,
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(50),
    ),
    clipBehavior: Clip.hardEdge,
    child: SizedBox(
      width: buttonSize,
      height: totalHeight,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          // "Еда"
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            bottom: isExpanded ? buttonSize * 2 + spacing * 2 : 0,
            child: GestureDetector(
              onTap: () {
                mainBloc.add(const MainEvent.cartOverlayToggled());
                onTabSelected(3);
              },
              child: CircleAvatar(
                radius: buttonSize / 2,
                backgroundColor: AppColors.bgSoftGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.food),
                    SizedBox(height: 1),
                    Text(
                      AppStrings.food,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Extra expanding button
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            bottom: isExpanded ? buttonSize + spacing : 0,
            child: GestureDetector(
              onTap: () {
                mainBloc.add(const MainEvent.cartOverlayToggled());
                onTabSelected(4);
              },
              child: CircleAvatar(
                radius: buttonSize / 2,
                backgroundColor: AppColors.bgSoftGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.product),
                    SizedBox(height: 1),
                    Text(
                      AppStrings.product,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: bottomNavButton(
              buttonSize,
              currentIndex == 4 || currentIndex == 3,
              AppStrings.shoppingCart,
              AppIcons.shoppingCart,
              () {
                mainBloc.add(const MainEvent.cartOverlayToggled());
              },
            ),
          ),
        ],
      ),
    ),
  );
}
