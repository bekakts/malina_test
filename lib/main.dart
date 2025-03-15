import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_test/presentation/routing/app_router.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/store_bloc.dart';
import 'package:malina_test/presentation/ui/main/main_bloc.dart';

import 'di/main_di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();

    return MultiBlocProvider(
      providers: [
        BlocProvider<MainBloc>(
          create: (context) => locator<MainBloc>(),
        ),
        BlocProvider<StoreBloc>(
          create: (context) => locator<StoreBloc>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
        themeMode: ThemeMode.system,
      ),
    );
  }
}
