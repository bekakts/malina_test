import 'package:get_it/get_it.dart';
import 'package:malina_test/di/use_case_module.dart';

import 'bloc_module.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  BlockModule.register(locator);
  UseCasesModule.register(locator);
}