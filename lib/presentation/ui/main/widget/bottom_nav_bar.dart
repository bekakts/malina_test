import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:malina_test/presentation/routing/app_router.dart';

import '../../../../di/main_di.dart';
import '../event/main_event.dart';
import '../main_bloc.dart';
import '../state/main_state.dart';

class BottomNavBar extends StatefulWidget {
  final MainState state;

  const BottomNavBar({super.key, required this.state});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late final MainBloc _mainBloc;

  @override
  void initState() {
    super.initState();
    _mainBloc = locator<MainBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final calculatedHeight = screenWidth / 5;

    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Material(
            elevation: 8,
            color: Colors.transparent,
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Container(
              height: calculatedHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              ),
            ),
          ),
        ),

        Positioned(left: 0, right: 0, bottom: 0, child: _bottomNavBar()),
      ],
    );
  }

  Widget _bottomNavBar() {
    final screenWidth = MediaQuery.of(context).size.width;
    final bottomButtonSize = screenWidth / 5 - 10;
    final router = AutoRouter.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            widget.state.currentTab == MainTab.shoppingCart,
            "Лента",
            Icons.store,
            () {
              _mainBloc.add(const MainEvent.tabSelected(MainTab.store));
              router.navigate(const StoreRoute());
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            widget.state.currentTab == MainTab.shoppingCart,
            "Избранное",
            Icons.favorite,
            () {
              _mainBloc.add(const MainEvent.tabSelected(MainTab.favorite));
              router.navigate(const FavoriteRoute());
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            widget.state.currentTab == MainTab.shoppingCart,
            "Профиль",
            Icons.person,
            () {
              _mainBloc.add(const MainEvent.tabSelected(MainTab.profile));
              router.navigate(const ProfileRoute());
            },
          ),
        ),

        buildExpandingButtons(
          context,
          widget.state.isCartOverlayOpen,
          bottomButtonSize,
        ),
      ],
    );
  }

  Widget buildExpandingButtons(
    BuildContext context,
    bool isExpanded,
    double buttonSize,
  ) {
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
        color: Colors.white,
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
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              bottom: isExpanded ? buttonSize * 2 + spacing * 2 : 0,
              child: GestureDetector(
                onTap: () {
                  /*    BlocProvider.of<StoreBloc>(
                    context,
                  ).add(ToggleExpansionEvent());*/
                },
                child: CircleAvatar(
                  radius: buttonSize / 2,
                  backgroundColor: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.food_bank_outlined),
                      SizedBox(height: 1),
                      Text(
                        "Еда",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              bottom: isExpanded ? buttonSize + spacing : 0,
              child: GestureDetector(
                onTap: () {
                  /* BlocProvider.of<StoreBloc>(
                    context,
                  ).add(ToggleExpansionEvent());*/
                },
                child: CircleAvatar(
                  radius: buttonSize / 2,
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.share),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: bottomNavButton(
                buttonSize,
                widget.state.currentTab == MainTab.shoppingCart,
                "Корзина",
                Icons.shopping_cart,
                () {
                  _mainBloc.add(const MainEvent.cartOverlayToggled());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNavButton(
    double buttonSize,
    bool isSelected,
    String tabTitle,
    IconData icon,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: buttonSize / 2,
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: isSelected ? Colors.red : Colors.grey),
            SizedBox(height: 1),
            Text(
              tabTitle,
              style: TextStyle(fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
