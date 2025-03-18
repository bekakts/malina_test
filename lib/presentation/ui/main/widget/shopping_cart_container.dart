import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Replace these with your actual imports
import '../main_bloc.dart';
import '../event/main_event.dart';
import '../state/main_state.dart';
import 'bottom_nav_button.dart';
import 'package:malina_test/presentation/utils/app_strings.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';
import 'package:malina_test/presentation/utils/app_icons.dart';

class ShoppingCartContainer extends StatelessWidget {
  final MainState state;
  final double buttonSize;
  final ValueChanged<int> onTabSelected;
  final int currentIndex;

  const ShoppingCartContainer({
    Key? key,
    required this.state,
    required this.buttonSize,
    required this.onTabSelected,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    const double betweenSpacing = 10.0;

    // Calculate the height for the overlay
    final double totalHeight = (buttonSize * 3) + (betweenSpacing * 2) + 10;
    final double containerHeight = state.isCartOverlayOpen
        ? totalHeight
        : (buttonSize + 5);

    // We add a little horizontal padding:
    final double containerWidth = buttonSize + 10;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      width: containerWidth,
      height: containerHeight,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          if (state.isCartOverlayOpen)
            const BoxShadow(
              color: Color(0x19727272),
              offset: Offset(0, -30),
              blurRadius: 20,
              spreadRadius: 0,
            ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          // Food
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            bottom: state.isCartOverlayOpen ? (buttonSize * 2 + betweenSpacing * 2) : 0,
            child: GestureDetector(
              onTap: () {
                mainBloc.add(const MainEvent.cartOverlayToggled());
                mainBloc.add(const MainEvent.updateShoppingCartType(ShoppingCartType.food));
                onTabSelected(3);
              },
              child: CircleAvatar(
                radius: buttonSize / 2,
                backgroundColor: state.shoppingCartType == ShoppingCartType.food
                    ? AppColors.malina
                    : AppColors.bgSoftGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppIcons.food,
                      colorFilter: ColorFilter.mode(
                        state.shoppingCartType == ShoppingCartType.food
                            ? AppColors.white
                            : AppColors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(height: 1),
                    Text(
                      AppStrings.food,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: state.shoppingCartType == ShoppingCartType.food
                            ? AppColors.white
                            : AppColors.black,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Product
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            bottom: state.isCartOverlayOpen ? (buttonSize + betweenSpacing) : 0,
            child: GestureDetector(
              onTap: () {
                mainBloc.add(const MainEvent.cartOverlayToggled());
                mainBloc.add(const MainEvent.updateShoppingCartType(ShoppingCartType.product));
                onTabSelected(4);
              },
              child: CircleAvatar(
                radius: buttonSize / 2,
                backgroundColor: state.shoppingCartType == ShoppingCartType.product
                    ? AppColors.malina
                    : AppColors.bgSoftGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppIcons.product,
                      colorFilter: ColorFilter.mode(
                        state.shoppingCartType == ShoppingCartType.product
                            ? AppColors.white
                            : AppColors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(height: 1),
                    Text(
                      AppStrings.product,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: state.shoppingCartType == ShoppingCartType.product
                            ? AppColors.white
                            : AppColors.black,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Main "shopping cart" button
          Positioned(
            bottom: 0,
            child: BottomNavButton(
              buttonSize: buttonSize,
              isSelected: currentIndex == 3 || currentIndex == 4,
              tabTitle: AppStrings.shoppingCart,
              icon: AppIcons.shoppingCart,
              onTap: () {
                mainBloc.add(const MainEvent.cartOverlayToggled());
              },
            ),
          ),
        ],
      ),
    );
  }
}
