import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Success qr")));
  }
}
