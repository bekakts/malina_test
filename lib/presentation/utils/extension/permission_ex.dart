import 'dart:ui';

import 'package:permission_handler/permission_handler.dart';

void requestCameraPermission({
  required onAccepted,
  required onPermissionDenied,
}) async {
  final status = await Permission.camera.status;

  if (status.isGranted) {
    onAccepted();
  } else {
    final newStatus = await Permission.camera.request();

    if (newStatus.isGranted) {
      onAccepted();
    } else if (newStatus.isPermanentlyDenied) {
      onPermissionDenied();
    } else {
      onPermissionDenied();
    }
  }
}