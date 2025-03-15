import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_test/presentation/ui/main/event/main_event.dart';
import 'package:malina_test/presentation/ui/main/state/main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState()) {

    on<CartOverlayToggled>((event, emit) {
      emit(state.copyWith(
        isCartOverlayOpen: !state.isCartOverlayOpen,
      ));
    });
  }
}
