import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final VoidCallback onRefresh;
  final String error;
  const ErrorView({super.key, required this.error, required this.onRefresh,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(error),
        ElevatedButton(onPressed: onRefresh, child: const Text("Refresh")),
      ],
    );
  }
}