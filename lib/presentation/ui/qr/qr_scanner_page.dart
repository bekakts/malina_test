import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_test/presentation/ui/qr/qr_scanner_bloc.dart';
import 'package:malina_test/presentation/ui/qr/state/qr_scanner_state.dart';
import 'package:malina_test/presentation/ui/qr/widget/qr_scanner_overlay_painter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../di/main_di.dart';
import '../../routing/app_router.dart';
import 'event/qr_scanner_event.dart';

@RoutePage()
class QrScannerPage extends StatefulWidget {
  const QrScannerPage({super.key});

  @override
  State<QrScannerPage> createState() => _QrScannerPageState();
}

class _QrScannerPageState extends State<QrScannerPage> {
  final MobileScannerController _cameraController = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<QrScannerBloc>(),
      child: BlocConsumer<QrScannerBloc, QrScannerState>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) async {
          if (state is Error) {
            _cameraController.stop();
            showQrErrorDialog();
          } else if (state is Navigating) {
            _cameraController.stop();
            context.router.replace(
              SuccessRoute(scannedData: state.scannedData),
            );
          } else if (state is BackState) {
            context.router.pop();
          } else if (state is RetryState) {
            _cameraController.start();
          }
        },
        builder: (context, state) {
          return _qrScannerWidget();
        },
      ),
    );
  }

  Future<void> showQrErrorDialog() async {
    return await showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Error'),
          actions: [
            TextButton(
              child: const Text('Back'),
              onPressed: () {
                Navigator.of(ctx).pop(); // close dialog
                context.read<QrScannerBloc>().add(const QrScannerEvent.back());
              },
            ),
            TextButton(
              child: const Text('Retry'),
              onPressed: () {
                Navigator.of(ctx).pop();
                context.read<QrScannerBloc>().add(const QrScannerEvent.retry());
              },
            ),
          ],
        );
      },
    );
  }

  Widget _qrScannerWidget() {
    const double scanBoxSize = 250;
    return LayoutBuilder(
      builder: (context, constraints) {
        final double centerX = constraints.maxWidth / 2;
        final double centerY = constraints.maxHeight / 2;

        final double left = centerX - scanBoxSize / 2;
        final double top = centerY - scanBoxSize / 2;
        final double right = centerX + scanBoxSize / 2;
        final double bottom = centerY + scanBoxSize / 2;

        final Rect scanRect = Rect.fromLTRB(left, top, right, bottom);

        return Stack(
          children: [
            MobileScanner(
              controller: _cameraController,
              fit: BoxFit.cover,
              scanWindow: scanRect,
              onDetectError: (error, stackTrace) {
                context.read<QrScannerBloc>().add(QrScannerEvent.detectError());
              },
              onDetect: (capture) {
                context.read<QrScannerBloc>().add(
                  QrScannerEvent.barcodeDetected(capture),
                );
              },
            ),

            CustomPaint(
              size: Size(constraints.maxWidth, constraints.maxHeight),
              painter: QrScannerOverlayPainter(scanRect: scanRect),
            ),

            Positioned(
              top: top - 50,
              left: 0,
              right: 0,
              child: const Center(
                child: Text(
                  'Поместите QR-код в рамку',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

            Positioned(
              top: 50,
              right: 16,
              child: GestureDetector(
                onTap: () => context.router.pop(),
                child: const Icon(Icons.close, color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}
