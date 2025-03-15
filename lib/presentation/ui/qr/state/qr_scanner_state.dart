import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_scanner_state.freezed.dart';

@freezed
class QrScannerState with _$QrScannerState {
  const factory QrScannerState.initial() = Initial;

  /// Tells the UI to show an error dialog
  const factory QrScannerState.error(String message) = Error;

  /// Tells the UI to navigate away with [scannedData]
  const factory QrScannerState.navigating(String scannedData) = Navigating;

  /// Tells the UI to pop the page
  const factory QrScannerState.back() = BackState;

  /// Tells the UI to restart scanning
  const factory QrScannerState.retry() = RetryState;
}
