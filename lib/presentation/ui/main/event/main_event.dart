import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malina_test/presentation/ui/main/state/main_state.dart';
part 'main_event.freezed.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.cartOverlayToggled([bool? isCartOverlayOpen]) = CartOverlayToggled;
  const factory MainEvent.updateShoppingCartType([ShoppingCartType? shoppingCartType]) = UpdateShoppingCartType;
}
