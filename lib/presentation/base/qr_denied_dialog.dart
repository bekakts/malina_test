import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:malina_test/presentation/utils/app_strings.dart';

Widget buildQrDeniedDialog({required BuildContext context}) {
  return AlertDialog(
    backgroundColor: Colors.white,
    contentPadding: EdgeInsets.all(16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.cameraPermissionDenied,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              flex: 4, // First text takes 4/5 of available space
              child: InkWell(
                onTap: () async {
                  await openAppSettings();
                  Navigator.of(context).pop();
                },
                borderRadius: BorderRadius.circular(8), // Improved tap target area
                child:  Text(
                    AppStrings.openSettings,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              ),
            ),
            const SizedBox(width: 40),
            Flexible(
              flex: 2, // Second text takes 1/5 of available space
              child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                borderRadius: BorderRadius.circular(8),
                child:  Text(
                    AppStrings.cancel,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              ),
            ),
          ],
        )

      ],
    ),
  );
}

Future<void> openAppSettings() async {
  try {
    AppSettings.openAppSettings(
      type: AppSettingsType.settings, // Directly opens app settings
    );
  } catch (e) {
    debugPrint('Error opening settings: $e');
  }
}
