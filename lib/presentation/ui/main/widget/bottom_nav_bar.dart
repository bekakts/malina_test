import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_test/presentation/routing/app_router.dart';
import 'package:malina_test/presentation/ui/main/state/main_state.dart';
import 'package:malina_test/presentation/ui/main/widget/shopping_cart_container.dart';
import 'dart:math' as math;
import 'package:permission_handler/permission_handler.dart';
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
            "Лента",
            Icons.store,
            (){
              mainBloc.add(const MainEvent.cartOverlayToggled(false));
              onTabSelected(0);},
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            currentIndex == 1,
            "Избранное",
            Icons.favorite,
                (){
              mainBloc.add(const MainEvent.cartOverlayToggled(false));
              onTabSelected(1);},
          ),
        ),
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
                mainBloc.add(const MainEvent.cartOverlayToggled(false));
                _requestCameraPermission(
                  () {
                    context.router.push(QrScannerRoute());
                  },
                  () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Camera permission is permanently denied. Please enable it in Settings.',
                        ),
                      ),
                    );
                  },
                );
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
                (){
              mainBloc.add(const MainEvent.cartOverlayToggled(false));
              onTabSelected(2);},
          ),
        ),

        buildShoppingCartContainer(
          context,
          state.isCartOverlayOpen,
          bottomButtonSize,
          (int selectedIndex) {
            onTabSelected(selectedIndex);
          },
          currentIndex,
        ),
      ],
    );
  }

  void _requestCameraPermission(
    VoidCallback onAccepted,
    VoidCallback showDeniedSnackBar,
  ) async {
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
