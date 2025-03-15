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
    required TResult Function(MainTab tab) tabSelected,
    required TResult Function() cartOverlayToggled,
    required TResult Function(CartSubTab cartSubTab) cartSubTabSelected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainTab tab)? tabSelected,
    TResult? Function()? cartOverlayToggled,
    TResult? Function(CartSubTab cartSubTab)? cartSubTabSelected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainTab tab)? tabSelected,
    TResult Function()? cartOverlayToggled,
    TResult Function(CartSubTab cartSubTab)? cartSubTabSelected,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabSelected value) tabSelected,
    required TResult Function(CartOverlayToggled value) cartOverlayToggled,
    required TResult Function(CartSubTabSelected value) cartSubTabSelected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabSelected value)? tabSelected,
    TResult? Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult? Function(CartSubTabSelected value)? cartSubTabSelected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabSelected value)? tabSelected,
    TResult Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult Function(CartSubTabSelected value)? cartSubTabSelected,
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
abstract class _$$TabSelectedImplCopyWith<$Res> {
  factory _$$TabSelectedImplCopyWith(
    _$TabSelectedImpl value,
    $Res Function(_$TabSelectedImpl) then,
  ) = __$$TabSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MainTab tab});
}

/// @nodoc
class __$$TabSelectedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$TabSelectedImpl>
    implements _$$TabSelectedImplCopyWith<$Res> {
  __$$TabSelectedImplCopyWithImpl(
    _$TabSelectedImpl _value,
    $Res Function(_$TabSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tab = null}) {
    return _then(
      _$TabSelectedImpl(
        null == tab
            ? _value.tab
            : tab // ignore: cast_nullable_to_non_nullable
                as MainTab,
      ),
    );
  }
}

/// @nodoc

class _$TabSelectedImpl implements TabSelected {
  const _$TabSelectedImpl(this.tab);

  @override
  final MainTab tab;

  @override
  String toString() {
    return 'MainEvent.tabSelected(tab: $tab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabSelectedImpl &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabSelectedImplCopyWith<_$TabSelectedImpl> get copyWith =>
      __$$TabSelectedImplCopyWithImpl<_$TabSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainTab tab) tabSelected,
    required TResult Function() cartOverlayToggled,
    required TResult Function(CartSubTab cartSubTab) cartSubTabSelected,
  }) {
    return tabSelected(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainTab tab)? tabSelected,
    TResult? Function()? cartOverlayToggled,
    TResult? Function(CartSubTab cartSubTab)? cartSubTabSelected,
  }) {
    return tabSelected?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainTab tab)? tabSelected,
    TResult Function()? cartOverlayToggled,
    TResult Function(CartSubTab cartSubTab)? cartSubTabSelected,
    required TResult orElse(),
  }) {
    if (tabSelected != null) {
      return tabSelected(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabSelected value) tabSelected,
    required TResult Function(CartOverlayToggled value) cartOverlayToggled,
    required TResult Function(CartSubTabSelected value) cartSubTabSelected,
  }) {
    return tabSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabSelected value)? tabSelected,
    TResult? Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult? Function(CartSubTabSelected value)? cartSubTabSelected,
  }) {
    return tabSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabSelected value)? tabSelected,
    TResult Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult Function(CartSubTabSelected value)? cartSubTabSelected,
    required TResult orElse(),
  }) {
    if (tabSelected != null) {
      return tabSelected(this);
    }
    return orElse();
  }
}

abstract class TabSelected implements MainEvent {
  const factory TabSelected(final MainTab tab) = _$TabSelectedImpl;

  MainTab get tab;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabSelectedImplCopyWith<_$TabSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(MainTab tab) tabSelected,
    required TResult Function() cartOverlayToggled,
    required TResult Function(CartSubTab cartSubTab) cartSubTabSelected,
  }) {
    return cartOverlayToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainTab tab)? tabSelected,
    TResult? Function()? cartOverlayToggled,
    TResult? Function(CartSubTab cartSubTab)? cartSubTabSelected,
  }) {
    return cartOverlayToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainTab tab)? tabSelected,
    TResult Function()? cartOverlayToggled,
    TResult Function(CartSubTab cartSubTab)? cartSubTabSelected,
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
    required TResult Function(TabSelected value) tabSelected,
    required TResult Function(CartOverlayToggled value) cartOverlayToggled,
    required TResult Function(CartSubTabSelected value) cartSubTabSelected,
  }) {
    return cartOverlayToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabSelected value)? tabSelected,
    TResult? Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult? Function(CartSubTabSelected value)? cartSubTabSelected,
  }) {
    return cartOverlayToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabSelected value)? tabSelected,
    TResult Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult Function(CartSubTabSelected value)? cartSubTabSelected,
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

/// @nodoc
abstract class _$$CartSubTabSelectedImplCopyWith<$Res> {
  factory _$$CartSubTabSelectedImplCopyWith(
    _$CartSubTabSelectedImpl value,
    $Res Function(_$CartSubTabSelectedImpl) then,
  ) = __$$CartSubTabSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartSubTab cartSubTab});
}

/// @nodoc
class __$$CartSubTabSelectedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$CartSubTabSelectedImpl>
    implements _$$CartSubTabSelectedImplCopyWith<$Res> {
  __$$CartSubTabSelectedImplCopyWithImpl(
    _$CartSubTabSelectedImpl _value,
    $Res Function(_$CartSubTabSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cartSubTab = null}) {
    return _then(
      _$CartSubTabSelectedImpl(
        null == cartSubTab
            ? _value.cartSubTab
            : cartSubTab // ignore: cast_nullable_to_non_nullable
                as CartSubTab,
      ),
    );
  }
}

/// @nodoc

class _$CartSubTabSelectedImpl implements CartSubTabSelected {
  const _$CartSubTabSelectedImpl(this.cartSubTab);

  @override
  final CartSubTab cartSubTab;

  @override
  String toString() {
    return 'MainEvent.cartSubTabSelected(cartSubTab: $cartSubTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartSubTabSelectedImpl &&
            (identical(other.cartSubTab, cartSubTab) ||
                other.cartSubTab == cartSubTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartSubTab);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartSubTabSelectedImplCopyWith<_$CartSubTabSelectedImpl> get copyWith =>
      __$$CartSubTabSelectedImplCopyWithImpl<_$CartSubTabSelectedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainTab tab) tabSelected,
    required TResult Function() cartOverlayToggled,
    required TResult Function(CartSubTab cartSubTab) cartSubTabSelected,
  }) {
    return cartSubTabSelected(cartSubTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainTab tab)? tabSelected,
    TResult? Function()? cartOverlayToggled,
    TResult? Function(CartSubTab cartSubTab)? cartSubTabSelected,
  }) {
    return cartSubTabSelected?.call(cartSubTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainTab tab)? tabSelected,
    TResult Function()? cartOverlayToggled,
    TResult Function(CartSubTab cartSubTab)? cartSubTabSelected,
    required TResult orElse(),
  }) {
    if (cartSubTabSelected != null) {
      return cartSubTabSelected(cartSubTab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabSelected value) tabSelected,
    required TResult Function(CartOverlayToggled value) cartOverlayToggled,
    required TResult Function(CartSubTabSelected value) cartSubTabSelected,
  }) {
    return cartSubTabSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabSelected value)? tabSelected,
    TResult? Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult? Function(CartSubTabSelected value)? cartSubTabSelected,
  }) {
    return cartSubTabSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabSelected value)? tabSelected,
    TResult Function(CartOverlayToggled value)? cartOverlayToggled,
    TResult Function(CartSubTabSelected value)? cartSubTabSelected,
    required TResult orElse(),
  }) {
    if (cartSubTabSelected != null) {
      return cartSubTabSelected(this);
    }
    return orElse();
  }
}

abstract class CartSubTabSelected implements MainEvent {
  const factory CartSubTabSelected(final CartSubTab cartSubTab) =
      _$CartSubTabSelectedImpl;

  CartSubTab get cartSubTab;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartSubTabSelectedImplCopyWith<_$CartSubTabSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
