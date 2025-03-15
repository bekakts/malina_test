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

            return Scaffold(
              body: Stack(
                children: [
                  Positioned.fill(child: child),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BottomNavBar(
                      state: state,
                      currentIndex: tabsRouter.activeIndex,
                      onTabSelected: (index) => tabsRouter.setActiveIndex(index),
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
