import 'package:bloc/bloc.dart';
import 'package:malina_test/presentation/ui/qr/state/qr_scanner_state.dart';

import 'event/qr_scanner_event.dart';

class QrScannerBloc extends Bloc<QrScannerEvent, QrScannerState> {
  QrScannerBloc() : super(const QrScannerState.initial()) {
    on<BarcodeDetected>(_onBarcodeDetected);
    on<Retry>(_onRetry);
    on<Back>(_onBack);
    on<DetectError>(_onDetectError);
  }

  void _onRetry(Retry event, Emitter<QrScannerState> emit) {
    emit(const QrScannerState.retry());
  }

  void _onBack(Back event, Emitter<QrScannerState> emit) {
    emit(const QrScannerState.back());
  }

  void _onDetectError(DetectError event, Emitter<QrScannerState> emit) {
    emit(const QrScannerState.error('No code found'));
  }

  void _onBarcodeDetected(BarcodeDetected event, Emitter<QrScannerState> emit) {
    final barcodes = event.capture.barcodes;
    if (barcodes.isEmpty) return;

    final rawValue = barcodes.first.rawValue;
    if (rawValue == null || rawValue.isEmpty) {
      emit(const QrScannerState.error('No code found'));
    } else {
      emit(QrScannerState.navigating(rawValue));
    }
  }
}
