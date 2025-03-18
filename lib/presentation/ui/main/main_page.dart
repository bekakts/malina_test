import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_test/presentation/routing/app_router.dart';
import 'package:malina_test/presentation/ui/main/main_bloc.dart';
import 'package:malina_test/presentation/ui/main/state/main_state.dart';
import 'widget/bottom_nav_bar.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return AutoTabsRouter(
          routes: const [
            StoreRoute(),
            FavoriteRoute(),
            ProfileRoute(),
            FoodRoute(),
            ProductRoute(),
          ],
          builder: (context, child) {
            final tabsRouter = AutoTabsRouter.of(context);
            final mediaQuery = MediaQuery.of(context);
            final shortestSide = mediaQuery.size.shortestSide;
            final bottomNavHeight = (shortestSide / 5 +10).clamp(60.0, 200.0);


            return Scaffold(
              body: Stack(
                children: [
                  Positioned.fill(bottom: bottomNavHeight - 12, child: child),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BottomNavBar(
                      bottomNavHeight: bottomNavHeight,
                      state: state,
                      currentIndex: tabsRouter.activeIndex,
                      onTabSelected:
                          (index) => tabsRouter.setActiveIndex(index),
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
