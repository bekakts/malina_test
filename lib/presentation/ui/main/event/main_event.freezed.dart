// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isCartOverlayOpen) cartOverlayToggled,
    required TResult Function(ShoppingCartType? shoppingCartType)
    updateShoppingCartType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isCartOverlayOpen)? cartOverlayToggled,
    TResult? Function(ShoppingCartType? shoppingCartType)?
    updateShoppingCartType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isCartOverlayOpen)? cartOverlayToggled,
    TResult Function(ShoppingCartType? shoppingCartType)?
    updateShoppingCartType,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartOverlayToggled value) cartOverlayToggled,
    required TResult Function(UpdateShoppingCartType value)
    updateShoppingCartType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult? Function(UpdateShoppingCartType value)? updateShoppingCartType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult Function(UpdateShoppingCartType value)? updateShoppingCartType,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CartOverlayToggledImplCopyWith<$Res> {
  factory _$$CartOverlayToggledImplCopyWith(
    _$CartOverlayToggledImpl value,
    $Res Function(_$CartOverlayToggledImpl) then,
  ) = __$$CartOverlayToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? isCartOverlayOpen});
}

/// @nodoc
class __$$CartOverlayToggledImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$CartOverlayToggledImpl>
    implements _$$CartOverlayToggledImplCopyWith<$Res> {
  __$$CartOverlayToggledImplCopyWithImpl(
    _$CartOverlayToggledImpl _value,
    $Res Function(_$CartOverlayToggledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isCartOverlayOpen = freezed}) {
    return _then(
      _$CartOverlayToggledImpl(
        freezed == isCartOverlayOpen
            ? _value.isCartOverlayOpen
            : isCartOverlayOpen // ignore: cast_nullable_to_non_nullable
                as bool?,
      ),
    );
  }
}

/// @nodoc

class _$CartOverlayToggledImpl implements CartOverlayToggled {
  const _$CartOverlayToggledImpl([this.isCartOverlayOpen]);

  @override
  final bool? isCartOverlayOpen;

  @override
  String toString() {
    return 'MainEvent.cartOverlayToggled(isCartOverlayOpen: $isCartOverlayOpen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartOverlayToggledImpl &&
            (identical(other.isCartOverlayOpen, isCartOverlayOpen) ||
                other.isCartOverlayOpen == isCartOverlayOpen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCartOverlayOpen);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartOverlayToggledImplCopyWith<_$CartOverlayToggledImpl> get copyWith =>
      __$$CartOverlayToggledImplCopyWithImpl<_$CartOverlayToggledImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isCartOverlayOpen) cartOverlayToggled,
    required TResult Function(ShoppingCartType? shoppingCartType)
    updateShoppingCartType,
  }) {
    return cartOverlayToggled(isCartOverlayOpen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isCartOverlayOpen)? cartOverlayToggled,
    TResult? Function(ShoppingCartType? shoppingCartType)?
    updateShoppingCartType,
  }) {
    return cartOverlayToggled?.call(isCartOverlayOpen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isCartOverlayOpen)? cartOverlayToggled,
    TResult Function(ShoppingCartType? shoppingCartType)?
    updateShoppingCartType,
    required TResult orElse(),
  }) {
    if (cartOverlayToggled != null) {
      return cartOverlayToggled(isCartOverlayOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartOverlayToggled value) cartOverlayToggled,
    required TResult Function(UpdateShoppingCartType value)
    updateShoppingCartType,
  }) {
    return cartOverlayToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult? Function(UpdateShoppingCartType value)? updateShoppingCartType,
  }) {
    return cartOverlayToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult Function(UpdateShoppingCartType value)? updateShoppingCartType,
    required TResult orElse(),
  }) {
    if (cartOverlayToggled != null) {
      return cartOverlayToggled(this);
    }
    return orElse();
  }
}

abstract class CartOverlayToggled implements MainEvent {
  const factory CartOverlayToggled([final bool? isCartOverlayOpen]) =
      _$CartOverlayToggledImpl;

  bool? get isCartOverlayOpen;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartOverlayToggledImplCopyWith<_$CartOverlayToggledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateShoppingCartTypeImplCopyWith<$Res> {
  factory _$$UpdateShoppingCartTypeImplCopyWith(
    _$UpdateShoppingCartTypeImpl value,
    $Res Function(_$UpdateShoppingCartTypeImpl) then,
  ) = __$$UpdateShoppingCartTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShoppingCartType? shoppingCartType});
}

/// @nodoc
class __$$UpdateShoppingCartTypeImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$UpdateShoppingCartTypeImpl>
    implements _$$UpdateShoppingCartTypeImplCopyWith<$Res> {
  __$$UpdateShoppingCartTypeImplCopyWithImpl(
    _$UpdateShoppingCartTypeImpl _value,
    $Res Function(_$UpdateShoppingCartTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? shoppingCartType = freezed}) {
    return _then(
      _$UpdateShoppingCartTypeImpl(
        freezed == shoppingCartType
            ? _value.shoppingCartType
            : shoppingCartType // ignore: cast_nullable_to_non_nullable
                as ShoppingCartType?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateShoppingCartTypeImpl implements UpdateShoppingCartType {
  const _$UpdateShoppingCartTypeImpl([this.shoppingCartType]);

  @override
  final ShoppingCartType? shoppingCartType;

  @override
  String toString() {
    return 'MainEvent.updateShoppingCartType(shoppingCartType: $shoppingCartType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateShoppingCartTypeImpl &&
            (identical(other.shoppingCartType, shoppingCartType) ||
                other.shoppingCartType == shoppingCartType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shoppingCartType);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateShoppingCartTypeImplCopyWith<_$UpdateShoppingCartTypeImpl>
  get copyWith =>
      __$$UpdateShoppingCartTypeImplCopyWithImpl<_$UpdateShoppingCartTypeImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isCartOverlayOpen) cartOverlayToggled,
    required TResult Function(ShoppingCartType? shoppingCartType)
    updateShoppingCartType,
  }) {
    return updateShoppingCartType(shoppingCartType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isCartOverlayOpen)? cartOverlayToggled,
    TResult? Function(ShoppingCartType? shoppingCartType)?
    updateShoppingCartType,
  }) {
    return updateShoppingCartType?.call(shoppingCartType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isCartOverlayOpen)? cartOverlayToggled,
    TResult Function(ShoppingCartType? shoppingCartType)?
    updateShoppingCartType,
    required TResult orElse(),
  }) {
    if (updateShoppingCartType != null) {
      return updateShoppingCartType(shoppingCartType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartOverlayToggled value) cartOverlayToggled,
    required TResult Function(UpdateShoppingCartType value)
    updateShoppingCartType,
  }) {
    return updateShoppingCartType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult? Function(UpdateShoppingCartType value)? updateShoppingCartType,
  }) {
    return updateShoppingCartType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult Function(UpdateShoppingCartType value)? updateShoppingCartType,
    required TResult orElse(),
  }) {
    if (updateShoppingCartType != null) {
      return updateShoppingCartType(this);
    }
    return orElse();
  }
}

abstract class UpdateShoppingCartType implements MainEvent {
  const factory UpdateShoppingCartType([
    final ShoppingCartType? shoppingCartType,
  ]) = _$UpdateShoppingCartTypeImpl;

  ShoppingCartType? get shoppingCartType;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateShoppingCartTypeImplCopyWith<_$UpdateShoppingCartTypeImpl>
  get copyWith => throw _privateConstructorUsedError;
}
