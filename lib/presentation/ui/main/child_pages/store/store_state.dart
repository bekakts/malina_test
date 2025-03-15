class StoreState {
  final bool isExpanded;
  StoreState({this.isExpanded = false});

  StoreState copyWith({bool? isExpanded}) {
    return StoreState(isExpanded: isExpanded ?? this.isExpanded);
  }
}
