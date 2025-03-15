import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_test/presentation/routing/app_router.dart';
import 'package:malina_test/presentation/ui/main/main_bloc.dart';
import 'package:malina_test/presentation/ui/main/state/main_state.dart';
import 'package:malina_test/presentation/ui/main/widget/bottom_nav_bar.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return AutoTabsRouter(
          // Order here must match your tab order!
          routes: const [
            StoreRoute(),
            FavoriteRoute(),
            ProfileRoute(),
            FoodRoute(),
            ProductRoute(),
          ],
          // The builder now only receives (context, child)
          builder: (context, child) {
            final tabsRouter = AutoTabsRouter.of(context);
            return Scaffold(
              // Instead of using bottomNavigationBar, we use a Stack in the body.
              body: Stack(
                children: [
                  // The content fills all available space.
                  Positioned.fill(child: child),
                  // Align the custom bottom nav bar at the bottom.
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BottomNavBar(
                      state: state,
                      currentIndex: tabsRouter.activeIndex,
                      onTabSelected: (index) {
                        // Switch tabs while preserving state.
                        tabsRouter.setActiveIndex(index);
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
