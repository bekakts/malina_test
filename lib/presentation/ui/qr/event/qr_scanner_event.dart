import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

part 'qr_scanner_event.freezed.dart';

@freezed
class QrScannerEvent with _$QrScannerEvent {
  const factory QrScannerEvent.barcodeDetected(BarcodeCapture capture) =BarcodeDetected;



  const factory QrScannerEvent.retry() = Retry;

  const factory QrScannerEvent.detectError() = DetectError;

  // User tapped "Back"
  const factory QrScannerEvent.back() = Back;
}
