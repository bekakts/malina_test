import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/store_bloc.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/store_state.dart';
import 'package:malina_test/presentation/utils/app_colors.dart';

import '../../../../../di/main_di.dart';

@RoutePage()
class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  late final StoreBloc _storeBloc;

  @override
  void initState() {
    super.initState();
    _storeBloc = locator<StoreBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(
      bloc: _storeBloc,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.malina,
          body: Align(alignment: Alignment.bottomCenter, child: Text("j")),
        );
      },
    );
  }
}