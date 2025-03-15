import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_event.freezed.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.tabSelected(MainTab tab) = TabSelected;
  const factory MainEvent.cartOverlayToggled() = CartOverlayToggled;
  const factory MainEvent.cartSubTabSelected(CartSubTab cartSubTab) = CartSubTabSelected;
}

enum MainTab { store, favorite, profile, shoppingCart }
enum CartSubTab { food, product }