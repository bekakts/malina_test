import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        return _mainWidget(state);
      },
    );
  }

  Widget _mainWidget(MainState state) {
    return Scaffold(
      body: Stack(
        children: [
          const AutoRouter(),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavBar(state: state),
          ),
        ],
      ),
    );
  }
}
