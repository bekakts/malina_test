import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SuccessPage extends StatelessWidget {
  final String scannedData;

  const SuccessPage({super.key, required this.scannedData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(scannedData)));
  }
}
