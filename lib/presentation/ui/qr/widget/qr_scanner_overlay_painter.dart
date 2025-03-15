import 'package:flutter/material.dart';

class QrScannerOverlayPainter extends CustomPainter {
  final Rect scanRect;

  QrScannerOverlayPainter({required this.scanRect});

  @override
  void paint(Canvas canvas, Size size) {
    final screenRect = Rect.fromLTWH(0, 0, size.width, size.height);

    // 1) Path covering the full screen
    final fullPath = Path()..addRect(screenRect);

    // 2) Path for the hole (center rectangle)
    final holePath = Path()..addRect(scanRect);

    // 3) Subtract the hole from the full screen => overlay
    final overlayPath = Path.combine(
      PathOperation.difference,
      fullPath,
      holePath,
    );

    // Draw the dark overlay
    final overlayPaint = Paint()..color = Colors.black.withOpacity(0.5);
    canvas.drawPath(overlayPath, overlayPaint);

    // Draw corner lines around scanRect
    final cornerPaint =
    Paint()
      ..color = Colors.white
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final cornerPath = Path();
    const double cornerLength = 40;

    // Top-left corner
    cornerPath.moveTo(scanRect.left, scanRect.top + cornerLength);
    cornerPath.lineTo(scanRect.left, scanRect.top);
    cornerPath.lineTo(scanRect.left + cornerLength, scanRect.top);

    // Top-right corner
    cornerPath.moveTo(scanRect.right, scanRect.top + cornerLength);
    cornerPath.lineTo(scanRect.right, scanRect.top);
    cornerPath.lineTo(scanRect.right - cornerLength, scanRect.top);

    // Bottom-left corner
    cornerPath.moveTo(scanRect.left, scanRect.bottom - cornerLength);
    cornerPath.lineTo(scanRect.left, scanRect.bottom);
    cornerPath.lineTo(scanRect.left + cornerLength, scanRect.bottom);

    // Bottom-right corner
    cornerPath.moveTo(scanRect.right, scanRect.bottom - cornerLength);
    cornerPath.lineTo(scanRect.right, scanRect.bottom);
    cornerPath.lineTo(scanRect.right - cornerLength, scanRect.bottom);

    canvas.drawPath(cornerPath, cornerPaint);
  }

  @override
  bool shouldRepaint(QrScannerOverlayPainter oldDelegate) {
    return oldDelegate.scanRect != scanRect;
  }
}