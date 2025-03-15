import 'package:get_it/get_it.dart';
import 'package:malina_test/domain/validation/qr/qr_validation.dart';

class UseCasesModule {
  static void register(GetIt locator) {
    locator.registerLazySingleton(() => QrValidation());
  }
}
