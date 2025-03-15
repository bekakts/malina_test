import 'package:get_it/get_it.dart';

import 'bloc_module.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  BlockModule.register(locator);
}