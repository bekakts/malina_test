// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_scanner_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$QrScannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BarcodeCapture capture) barcodeDetected,
    required TResult Function() retry,
    required TResult Function() detectError,
    required TResult Function() back,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BarcodeCapture capture)? barcodeDetected,
    TResult? Function()? retry,
    TResult? Function()? detectError,
    TResult? Function()? back,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BarcodeCapture capture)? barcodeDetected,
    TResult Function()? retry,
    TResult Function()? detectError,
    TResult Function()? back,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BarcodeDetected value) barcodeDetected,
    required TResult Function(Retry value) retry,
    required TResult Function(DetectError value) detectError,
    required TResult Function(Back value) back,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BarcodeDetected value)? barcodeDetected,
    TResult? Function(Retry value)? retry,
    TResult? Function(DetectError value)? detectError,
    TResult? Function(Back value)? back,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BarcodeDetected value)? barcodeDetected,
    TResult Function(Retry value)? retry,
    TResult Function(DetectError value)? detectError,
    TResult Function(Back value)? back,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrScannerEventCopyWith<$Res> {
  factory $QrScannerEventCopyWith(
    QrScannerEvent value,
    $Res Function(QrScannerEvent) then,
  ) = _$QrScannerEventCopyWithImpl<$Res, QrScannerEvent>;
}

/// @nodoc
class _$QrScannerEventCopyWithImpl<$Res, $Val extends QrScannerEvent>
    implements $QrScannerEventCopyWith<$Res> {
  _$QrScannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QrScannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BarcodeDetectedImplCopyWith<$Res> {
  factory _$$BarcodeDetectedImplCopyWith(
    _$BarcodeDetectedImpl value,
    $Res Function(_$BarcodeDetectedImpl) then,
  ) = __$$BarcodeDetectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BarcodeCapture capture});
}

/// @nodoc
class __$$BarcodeDetectedImplCopyWithImpl<$Res>
    extends _$QrScannerEventCopyWithImpl<$Res, _$BarcodeDetectedImpl>
    implements _$$BarcodeDetectedImplCopyWith<$Res> {
  __$$BarcodeDetectedImplCopyWithImpl(
    _$BarcodeDetectedImpl _value,
    $Res Function(_$BarcodeDetectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QrScannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? capture = null}) {
    return _then(
      _$BarcodeDetectedImpl(
        null == capture
            ? _value.capture
            : capture // ignore: cast_nullable_to_non_nullable
                as BarcodeCapture,
      ),
    );
  }
}

/// @nodoc

class _$BarcodeDetectedImpl implements BarcodeDetected {
  const _$BarcodeDetectedImpl(this.capture);

  @override
  final BarcodeCapture capture;

  @override
  String toString() {
    return 'QrScannerEvent.barcodeDetected(capture: $capture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarcodeDetectedImpl &&
            (identical(other.capture, capture) || other.capture == capture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, capture);

  /// Create a copy of QrScannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BarcodeDetectedImplCopyWith<_$BarcodeDetectedImpl> get copyWith =>
      __$$BarcodeDetectedImplCopyWithImpl<_$BarcodeDetectedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BarcodeCapture capture) barcodeDetected,
    required TResult Function() retry,
    required TResult Function() detectError,
    required TResult Function() back,
  }) {
    return barcodeDetected(capture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BarcodeCapture capture)? barcodeDetected,
    TResult? Function()? retry,
    TResult? Function()? detectError,
    TResult? Function()? back,
  }) {
    return barcodeDetected?.call(capture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BarcodeCapture capture)? barcodeDetected,
    TResult Function()? retry,
    TResult Function()? detectError,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (barcodeDetected != null) {
      return barcodeDetected(capture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BarcodeDetected value) barcodeDetected,
    required TResult Function(Retry value) retry,
    required TResult Function(DetectError value) detectError,
    required TResult Function(Back value) back,
  }) {
    return barcodeDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BarcodeDetected value)? barcodeDetected,
    TResult? Function(Retry value)? retry,
    TResult? Function(DetectError value)? detectError,
    TResult? Function(Back value)? back,
  }) {
    return barcodeDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BarcodeDetected value)? barcodeDetected,
    TResult Function(Retry value)? retry,
    TResult Function(DetectError value)? detectError,
    TResult Function(Back value)? back,
    required TResult orElse(),
  }) {
    if (barcodeDetected != null) {
      return barcodeDetected(this);
    }
    return orElse();
  }
}

abstract class BarcodeDetected implements QrScannerEvent {
  const factory BarcodeDetected(final BarcodeCapture capture) =
      _$BarcodeDetectedImpl;

  BarcodeCapture get capture;

  /// Create a copy of QrScannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BarcodeDetectedImplCopyWith<_$BarcodeDetectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RetryImplCopyWith<$Res> {
  factory _$$RetryImplCopyWith(
    _$RetryImpl value,
    $Res Function(_$RetryImpl) then,
  ) = __$$RetryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetryImplCopyWithImpl<$Res>
    extends _$QrScannerEventCopyWithImpl<$Res, _$RetryImpl>
    implements _$$RetryImplCopyWith<$Res> {
  __$$RetryImplCopyWithImpl(
    _$RetryImpl _value,
    $Res Function(_$RetryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QrScannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RetryImpl implements Retry {
  const _$RetryImpl();

  @override
  String toString() {
    return 'QrScannerEvent.retry()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RetryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BarcodeCapture capture) barcodeDetected,
    required TResult Function() retry,
    required TResult Function() detectError,
    required TResult Function() back,
  }) {
    return retry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BarcodeCapture capture)? barcodeDetected,
    TResult? Function()? retry,
    TResult? Function()? detectError,
    TResult? Function()? back,
  }) {
    return retry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BarcodeCapture capture)? barcodeDetected,
    TResult Function()? retry,
    TResult Function()? detectError,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BarcodeDetected value) barcodeDetected,
    required TResult Function(Retry value) retry,
    required TResult Function(DetectError value) detectError,
    required TResult Function(Back value) back,
  }) {
    return retry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BarcodeDetected value)? barcodeDetected,
    TResult? Function(Retry value)? retry,
    TResult? Function(DetectError value)? detectError,
    TResult? Function(Back value)? back,
  }) {
    return retry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BarcodeDetected value)? barcodeDetected,
    TResult Function(Retry value)? retry,
    TResult Function(DetectError value)? detectError,
    TResult Function(Back value)? back,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(this);
    }
    return orElse();
  }
}

abstract class Retry implements QrScannerEvent {
  const factory Retry() = _$RetryImpl;
}

/// @nodoc
abstract class _$$DetectErrorImplCopyWith<$Res> {
  factory _$$DetectErrorImplCopyWith(
    _$DetectErrorImpl value,
    $Res Function(_$DetectErrorImpl) then,
  ) = __$$DetectErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetectErrorImplCopyWithImpl<$Res>
    extends _$QrScannerEventCopyWithImpl<$Res, _$DetectErrorImpl>
    implements _$$DetectErrorImplCopyWith<$Res> {
  __$$DetectErrorImplCopyWithImpl(
    _$DetectErrorImpl _value,
    $Res Function(_$DetectErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QrScannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DetectErrorImpl implements DetectError {
  const _$DetectErrorImpl();

  @override
  String toString() {
    return 'QrScannerEvent.detectError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetectErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BarcodeCapture capture) barcodeDetected,
    required TResult Function() retry,
    required TResult Function() detectError,
    required TResult Function() back,
  }) {
    return detectError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BarcodeCapture capture)? barcodeDetected,
    TResult? Function()? retry,
    TResult? Function()? detectError,
    TResult? Function()? back,
  }) {
    return detectError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BarcodeCapture capture)? barcodeDetected,
    TResult Function()? retry,
    TResult Function()? detectError,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (detectError != null) {
      return detectError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BarcodeDetected value) barcodeDetected,
    required TResult Function(Retry value) retry,
    required TResult Function(DetectError value) detectError,
    required TResult Function(Back value) back,
  }) {
    return detectError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BarcodeDetected value)? barcodeDetected,
    TResult? Function(Retry value)? retry,
    TResult? Function(DetectError value)? detectError,
    TResult? Function(Back value)? back,
  }) {
    return detectError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BarcodeDetected value)? barcodeDetected,
    TResult Function(Retry value)? retry,
    TResult Function(DetectError value)? detectError,
    TResult Function(Back value)? back,
    required TResult orElse(),
  }) {
    if (detectError != null) {
      return detectError(this);
    }
    return orElse();
  }
}

abstract class DetectError implements QrScannerEvent {
  const factory DetectError() = _$DetectErrorImpl;
}

/// @nodoc
abstract class _$$BackImplCopyWith<$Res> {
  factory _$$BackImplCopyWith(
    _$BackImpl value,
    $Res Function(_$BackImpl) then,
  ) = __$$BackImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackImplCopyWithImpl<$Res>
    extends _$QrScannerEventCopyWithImpl<$Res, _$BackImpl>
    implements _$$BackImplCopyWith<$Res> {
  __$$BackImplCopyWithImpl(_$BackImpl _value, $Res Function(_$BackImpl) _then)
    : super(_value, _then);

  /// Create a copy of QrScannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BackImpl implements Back {
  const _$BackImpl();

  @override
  String toString() {
    return 'QrScannerEvent.back()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BarcodeCapture capture) barcodeDetected,
    required TResult Function() retry,
    required TResult Function() detectError,
    required TResult Function() back,
  }) {
    return back();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BarcodeCapture capture)? barcodeDetected,
    TResult? Function()? retry,
    TResult? Function()? detectError,
    TResult? Function()? back,
  }) {
    return back?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BarcodeCapture capture)? barcodeDetected,
    TResult Function()? retry,
    TResult Function()? detectError,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BarcodeDetected value) barcodeDetected,
    required TResult Function(Retry value) retry,
    required TResult Function(DetectError value) detectError,
    required TResult Function(Back value) back,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BarcodeDetected value)? barcodeDetected,
    TResult? Function(Retry value)? retry,
    TResult? Function(DetectError value)? detectError,
    TResult? Function(Back value)? back,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BarcodeDetected value)? barcodeDetected,
    TResult Function(Retry value)? retry,
    TResult Function(DetectError value)? detectError,
    TResult Function(Back value)? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class Back implements QrScannerEvent {
  const factory Back() = _$BackImpl;
}
