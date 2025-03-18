import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malina_test/presentation/base/qr_denied_dialog.dart';
import 'package:malina_test/presentation/routing/app_router.dart';
import 'package:malina_test/presentation/ui/main/state/main_state.dart';
import 'package:malina_test/presentation/ui/main/widget/shopping_cart_container.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';
import 'package:malina_test/presentation/utils/app_icons.dart';
import 'package:malina_test/presentation/utils/app_strings.dart';
import '../../../utils/extension/permission_ex.dart';
import '../event/main_event.dart';
import '../main_bloc.dart';
import 'bottom_nav_button.dart';

class BottomNavBar extends StatelessWidget {
  final MainState state;
  final int currentIndex;
  final Function(int) onTabSelected;
  final double bottomNavHeight;

  const BottomNavBar({
    super.key,
    required this.state,
    required this.currentIndex,
    required this.onTabSelected,
    required this.bottomNavHeight,
  });

  @override
  Widget build(BuildContext context) {
    final double bottomPadding = 20.0;

    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: bottomNavHeight + bottomPadding-10,
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x33000000),
                  offset: Offset(15, 0),
                  blurRadius: 30,
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: bottomPadding),
            child: _bottomNavBar(context),
          ),
        ),
      ],
    );
  }

  Widget _bottomNavBar(BuildContext context) {
    final mainBloc = context.read<MainBloc>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final mediaQuery = MediaQuery.of(context);
          final isLandscape = mediaQuery.orientation == Orientation.landscape;
          final screenDimension =
              isLandscape ? constraints.maxHeight : constraints.maxWidth;

          final bottomButtonSize = screenDimension / 5 - 10;

          return Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  right: 2,
                  bottom: 5,
                  left: 6,
                ),
                child: BottomNavButton(
                  buttonSize: bottomButtonSize,
                  isSelected: currentIndex == 0,
                  tabTitle: AppStrings.store,
                  icon: AppIcons.store,
                  onTap: () {
                    mainBloc.add(const MainEvent.cartOverlayToggled(false));
                    mainBloc.add(const MainEvent.updateShoppingCartType());
                    onTabSelected(0);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 2,
                ),
                child: BottomNavButton(
                  buttonSize: bottomButtonSize,
                  isSelected: currentIndex == 1,
                  tabTitle: AppStrings.favorite,
                  icon: AppIcons.favorite,
                  onTap: () {
                    mainBloc.add(const MainEvent.cartOverlayToggled(false));
                    mainBloc.add(const MainEvent.updateShoppingCartType());
                    onTabSelected(1);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 2,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x59AA0D34),
                        blurRadius: 14.73,
                        spreadRadius: 0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  width: bottomButtonSize,
                  height: bottomButtonSize,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.malina,
                      shape: const CircleBorder(),
                      shadowColor: null,
                      minimumSize: Size(bottomButtonSize, bottomButtonSize),
                      elevation: 0,
                    ),

                    onPressed: () {
                      mainBloc.add(const MainEvent.cartOverlayToggled(false));
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
                    child: SvgPicture.asset(AppIcons.qr),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2, top: 5, bottom: 5),
                child: BottomNavButton(
                  buttonSize: bottomButtonSize,
                  isSelected: currentIndex == 2,
                  tabTitle: AppStrings.profile,
                  icon: AppIcons.profile,
                  onTap: () {
                    mainBloc.add(const MainEvent.cartOverlayToggled(false));
                    mainBloc.add(const MainEvent.updateShoppingCartType());
                    onTabSelected(2);
                  },
                ),
              ),
              ShoppingCartContainer(
                state: state,
                buttonSize: bottomButtonSize,
                currentIndex: currentIndex,
                onTabSelected: (int selectedIndex) {
                  onTabSelected(selectedIndex);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
