import 'package:freezed_annotation/freezed_annotation.dart';
import '../event/main_event.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(MainTab.store) MainTab currentTab,
    @Default(false) bool isCartOverlayOpen,
    @Default(null) CartSubTab? selectedCartSubTab,
  }) = _MainState;
}
