import 'package:get_it/get_it.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/store_bloc.dart';
import 'package:malina_test/presentation/ui/main/main_bloc.dart';

class BlockModule {
  static void register(GetIt locator) {
    locator.registerLazySingleton<MainBloc>(() => MainBloc());
    locator.registerLazySingleton<StoreBloc>(() => StoreBloc());
  }
}
