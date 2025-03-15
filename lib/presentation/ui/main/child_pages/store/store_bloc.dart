import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/store_event.dart';
import 'package:malina_test/presentation/ui/main/child_pages/store/store_state.dart';

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  StoreBloc() : super(StoreState()) {
    on<ToggleExpansionEvent>((event, emit) {
      emit(state.copyWith(isExpanded: !state.isExpanded));
    });
  }
}
