import 'package:flutter/material.dart';
import 'package:malina_test/presentation/ui/main/event/main_event.dart';
import 'package:malina_test/presentation/ui/main/main_bloc.dart';
import 'package:malina_test/presentation/ui/main/state/main_state.dart';
import '../../../../di/main_di.dart';

class BottomNavBar extends StatefulWidget {
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
    final calculatedHeight = screenWidth / 5 + 10;

    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Material(
            elevation: 8,
            color: Colors.transparent,
            borderRadius:
            const BorderRadius.vertical(top: Radius.circular(12)),
            child: Container(
              height: calculatedHeight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.vertical(top: Radius.circular(12)),
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
            child: _bottomNavBar(),
          ),
        ),
      ],
    );
  }

  Widget _bottomNavBar() {
    final screenWidth = MediaQuery.of(context).size.width;
    final bottomButtonSize = screenWidth / 5 - 10;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // "Лента" button (StoreRoute, index 0)
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            widget.currentIndex == 0,
            "Лента",
            Icons.store,
                () {
              _mainBloc.add(const MainEvent.tabSelected(MainTab.store));
              widget.onTabSelected(0);
            },
          ),
        ),
        // "Избранное" button (FavoriteRoute, index 1)
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            widget.currentIndex == 1,
            "Избранное",
            Icons.favorite,
                () {
              _mainBloc.add(const MainEvent.tabSelected(MainTab.favorite));
              widget.onTabSelected(1);
            },
          ),
        ),
        // Central button (custom action – not tied to a route)
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
                // Define your central button action here if needed.
              },
              child: const Icon(
                Icons.apps,
                color: Colors.white,
              ),
            ),
          ),
        ),
        // "Профиль" button (ProfileRoute, index 2)
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: bottomNavButton(
            bottomButtonSize,
            widget.currentIndex == 2,
            "Профиль",
            Icons.person,
                () {
              _mainBloc.add(const MainEvent.tabSelected(MainTab.profile));
              widget.onTabSelected(2);
            },
          ),
        ),
        // Expanding buttons: "Еда" (FoodRoute, index 3) and "Корзина" (ProductRoute, index 4)
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
            // "Еда" button (FoodRoute, index 3)
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              bottom: isExpanded ? buttonSize * 2 + spacing * 2 : 0,
              child: GestureDetector(
                onTap: () {
                  _mainBloc.add(const MainEvent.cartOverlayToggled());
                  widget.onTabSelected(3);
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
            // Additional expanding button (for example, a share button)
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              bottom: isExpanded ? buttonSize + spacing : 0,
              child: GestureDetector(
                onTap: () {
                  widget.onTabSelected(4);
                  _mainBloc.add(const MainEvent.cartOverlayToggled());
                },
                child: CircleAvatar(
                  radius: buttonSize / 2,
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.share),
                ),
              ),
            ),
            // "Корзина" button (ProductRoute, index 4)
            Positioned(
              bottom: 0,
              child: bottomNavButton(
                buttonSize,
                widget.currentIndex == 4 || widget.currentIndex ==3,
                "Корзина",
                Icons.shopping_cart,
                    () {
                      _mainBloc.add(const MainEvent.cartOverlayToggled());
                 // widget.onTabSelected(4);
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
}
