import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'presentation/homepage.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const DepositBox()));
}

class DepositBox extends StatefulWidget {
  const DepositBox({super.key});

  @override
  State<DepositBox> createState() => _DepositBoxState();
}

class _DepositBoxState extends State<DepositBox> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}
