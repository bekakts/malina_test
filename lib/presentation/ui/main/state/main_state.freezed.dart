// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MainState {
  MainTab get currentTab => throw _privateConstructorUsedError;
  bool get isCartOverlayOpen => throw _privateConstructorUsedError;
  CartSubTab? get selectedCartSubTab => throw _privateConstructorUsedError;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call({
    MainTab currentTab,
    bool isCartOverlayOpen,
    CartSubTab? selectedCartSubTab,
  });
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTab = null,
    Object? isCartOverlayOpen = null,
    Object? selectedCartSubTab = freezed,
  }) {
    return _then(
      _value.copyWith(
            currentTab:
                null == currentTab
                    ? _value.currentTab
                    : currentTab // ignore: cast_nullable_to_non_nullable
                        as MainTab,
            isCartOverlayOpen:
                null == isCartOverlayOpen
                    ? _value.isCartOverlayOpen
                    : isCartOverlayOpen // ignore: cast_nullable_to_non_nullable
                        as bool,
            selectedCartSubTab:
                freezed == selectedCartSubTab
                    ? _value.selectedCartSubTab
                    : selectedCartSubTab // ignore: cast_nullable_to_non_nullable
                        as CartSubTab?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
    _$MainStateImpl value,
    $Res Function(_$MainStateImpl) then,
  ) = __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    MainTab currentTab,
    bool isCartOverlayOpen,
    CartSubTab? selectedCartSubTab,
  });
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
    _$MainStateImpl _value,
    $Res Function(_$MainStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTab = null,
    Object? isCartOverlayOpen = null,
    Object? selectedCartSubTab = freezed,
  }) {
    return _then(
      _$MainStateImpl(
        currentTab:
            null == currentTab
                ? _value.currentTab
                : currentTab // ignore: cast_nullable_to_non_nullable
                    as MainTab,
        isCartOverlayOpen:
            null == isCartOverlayOpen
                ? _value.isCartOverlayOpen
                : isCartOverlayOpen // ignore: cast_nullable_to_non_nullable
                    as bool,
        selectedCartSubTab:
            freezed == selectedCartSubTab
                ? _value.selectedCartSubTab
                : selectedCartSubTab // ignore: cast_nullable_to_non_nullable
                    as CartSubTab?,
      ),
    );
  }
}

/// @nodoc

class _$MainStateImpl implements _MainState {
  const _$MainStateImpl({
    this.currentTab = MainTab.store,
    this.isCartOverlayOpen = false,
    this.selectedCartSubTab = null,
  });

  @override
  @JsonKey()
  final MainTab currentTab;
  @override
  @JsonKey()
  final bool isCartOverlayOpen;
  @override
  @JsonKey()
  final CartSubTab? selectedCartSubTab;

  @override
  String toString() {
    return 'MainState(currentTab: $currentTab, isCartOverlayOpen: $isCartOverlayOpen, selectedCartSubTab: $selectedCartSubTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.isCartOverlayOpen, isCartOverlayOpen) ||
                other.isCartOverlayOpen == isCartOverlayOpen) &&
            (identical(other.selectedCartSubTab, selectedCartSubTab) ||
                other.selectedCartSubTab == selectedCartSubTab));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentTab,
    isCartOverlayOpen,
    selectedCartSubTab,
  );

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState({
    final MainTab currentTab,
    final bool isCartOverlayOpen,
    final CartSubTab? selectedCartSubTab,
  }) = _$MainStateImpl;

  @override
  MainTab get currentTab;
  @override
  bool get isCartOverlayOpen;
  @override
  CartSubTab? get selectedCartSubTab;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
