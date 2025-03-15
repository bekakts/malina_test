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
    required TResult Function() cartOverlayToggled,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cartOverlayToggled,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cartOverlayToggled,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartOverlayToggled value) cartOverlayToggled,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartOverlayToggled value)? cartOverlayToggled,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartOverlayToggled value)? cartOverlayToggled,
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
}

/// @nodoc

class _$CartOverlayToggledImpl implements CartOverlayToggled {
  const _$CartOverlayToggledImpl();

  @override
  String toString() {
    return 'MainEvent.cartOverlayToggled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartOverlayToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cartOverlayToggled,
  }) {
    return cartOverlayToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cartOverlayToggled,
  }) {
    return cartOverlayToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cartOverlayToggled,
    required TResult orElse(),
  }) {
    if (cartOverlayToggled != null) {
      return cartOverlayToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartOverlayToggled value) cartOverlayToggled,
  }) {
    return cartOverlayToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartOverlayToggled value)? cartOverlayToggled,
  }) {
    return cartOverlayToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartOverlayToggled value)? cartOverlayToggled,
    required TResult orElse(),
  }) {
    if (cartOverlayToggled != null) {
      return cartOverlayToggled(this);
    }
    return orElse();
  }
}

abstract class CartOverlayToggled implements MainEvent {
  const factory CartOverlayToggled() = _$CartOverlayToggledImpl;
}
