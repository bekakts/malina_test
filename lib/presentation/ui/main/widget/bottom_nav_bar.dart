import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_test/presentation/routing/app_router.dart';
import 'package:malina_test/presentation/ui/main/event/main_event.dart';
import 'package:malina_test/presentation/ui/main/main_bloc.dart';
import 'package:malina_test/presentation/ui/main/state/main_state.dart';
import 'dart:math' as math;

import 'package:permission_handler/permission_handler.dart';

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
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;

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
                color: Colors.white,
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
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    final rawButtonSize = screenWidth / 5 - 10;
    final bottomButtonSize = math.max(rawButtonSize, 40).toDouble();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // "Лента"
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            currentIndex == 0,
            "Лента",
            Icons.store,
                () => onTabSelected(0),
          ),
        ),
        // "Избранное"
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            currentIndex == 1,
            "Избранное",
            Icons.favorite,
                () => onTabSelected(1),
          ),
        ),
        // Central button
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            width: bottomButtonSize,
            height: bottomButtonSize,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const CircleBorder(),
                minimumSize: Size(bottomButtonSize, bottomButtonSize),
                elevation: 4,
              ),
              onPressed: () {
                _requestCameraPermission(() {
                  context.router.push(QrScannerRoute());
                }, () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Camera permission is permanently denied. Please enable it in Settings.',
                      ),
                    ),
                  );
                });
              },
              child: const Icon(Icons.apps, color: Colors.white),
            ),
          ),
        ),
        // "Профиль"
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            currentIndex == 2,
            "Профиль",
            Icons.person,
                () => onTabSelected(2),
          ),
        ),
        buildExpandingButtons(
          context,
          state.isCartOverlayOpen,
          bottomButtonSize,
        ),
      ],
    );
  }

  Widget buildExpandingButtons(BuildContext context,
      bool isExpanded,
      double buttonSize,) {
    final mainBloc = context.read<MainBloc>();

    const double spacing = 10.0;

    // totalHeight for the 3 stacked circle buttons
    final double totalHeight = buttonSize * 3 + spacing * 2;

    // The container either shows 1 circle or up to 3 circles stacked
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
            // "Еда"
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              bottom: isExpanded ? buttonSize * 2 + spacing * 2 : 0,
              child: GestureDetector(
                onTap: () {
                  // Toggle overlay first
                  mainBloc.add(const MainEvent.cartOverlayToggled());
                  // Then switch to tab 3
                  onTabSelected(3);
                },
                child: CircleAvatar(
                  radius: buttonSize / 2,
                  backgroundColor: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.food_bank_outlined),
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
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.share),
                ),
              ),
            ),
            // "Корзина"
            Positioned(
              bottom: 0,
              child: bottomNavButton(
                buttonSize,
                currentIndex == 4 || currentIndex == 3,
                "Корзина",
                Icons.shopping_cart,
                    () {
                  mainBloc.add(const MainEvent.cartOverlayToggled());
                  // If you want to also switch:
                  // onTabSelected(4);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNavButton(double buttonSize,
      bool isSelected,
      String tabTitle,
      IconData icon,
      VoidCallback onTap,) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        // The radius is half the buttonSize, which we've clamped to >= 40
        radius: buttonSize / 2,
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: isSelected ? Colors.red : Colors.grey),
            const SizedBox(height: 1),
            Text(
              tabTitle,
              style: const TextStyle(fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void _requestCameraPermission(VoidCallback onAccepted,
      VoidCallback showDeniedSnackBar) async {
    final status = await Permission.camera.status;

    if (status.isGranted) {
      onAccepted();
    } else {
      final newStatus = await Permission.camera.request();

      if (newStatus.isGranted) {
        onAccepted();
      } else if (newStatus.isPermanentlyDenied) {
        showDeniedSnackBar();
      } else {
        showDeniedSnackBar();
      }
    }
  }
}