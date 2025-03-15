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
  bool get isCartOverlayOpen => throw _privateConstructorUsedError;
  ShoppingCartType? get shoppingCartType => throw _privateConstructorUsedError;

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
  $Res call({bool isCartOverlayOpen, ShoppingCartType? shoppingCartType});
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
    Object? isCartOverlayOpen = null,
    Object? shoppingCartType = freezed,
  }) {
    return _then(
      _value.copyWith(
            isCartOverlayOpen:
                null == isCartOverlayOpen
                    ? _value.isCartOverlayOpen
                    : isCartOverlayOpen // ignore: cast_nullable_to_non_nullable
                        as bool,
            shoppingCartType:
                freezed == shoppingCartType
                    ? _value.shoppingCartType
                    : shoppingCartType // ignore: cast_nullable_to_non_nullable
                        as ShoppingCartType?,
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
  $Res call({bool isCartOverlayOpen, ShoppingCartType? shoppingCartType});
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
    Object? isCartOverlayOpen = null,
    Object? shoppingCartType = freezed,
  }) {
    return _then(
      _$MainStateImpl(
        isCartOverlayOpen:
            null == isCartOverlayOpen
                ? _value.isCartOverlayOpen
                : isCartOverlayOpen // ignore: cast_nullable_to_non_nullable
                    as bool,
        shoppingCartType:
            freezed == shoppingCartType
                ? _value.shoppingCartType
                : shoppingCartType // ignore: cast_nullable_to_non_nullable
                    as ShoppingCartType?,
      ),
    );
  }
}

/// @nodoc

class _$MainStateImpl implements _MainState {
  const _$MainStateImpl({
    this.isCartOverlayOpen = false,
    this.shoppingCartType = null,
  });

  @override
  @JsonKey()
  final bool isCartOverlayOpen;
  @override
  @JsonKey()
  final ShoppingCartType? shoppingCartType;

  @override
  String toString() {
    return 'MainState(isCartOverlayOpen: $isCartOverlayOpen, shoppingCartType: $shoppingCartType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.isCartOverlayOpen, isCartOverlayOpen) ||
                other.isCartOverlayOpen == isCartOverlayOpen) &&
            (identical(other.shoppingCartType, shoppingCartType) ||
                other.shoppingCartType == shoppingCartType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isCartOverlayOpen, shoppingCartType);

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
    final bool isCartOverlayOpen,
    final ShoppingCartType? shoppingCartType,
  }) = _$MainStateImpl;

  @override
  bool get isCartOverlayOpen;
  @override
  ShoppingCartType? get shoppingCartType;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
