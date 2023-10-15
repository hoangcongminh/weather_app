import 'package:flutter/material.dart';
import 'package:weather_app/utils/extension.dart';

class ErrorScreen extends StatelessWidget {
  final VoidCallback onTryAgain;
  final String imageURL;
  final String message;
  const ErrorScreen({
    super.key,
    required this.message,
    required this.onTryAgain,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          imageURL,
          width: 100,
          height: 200,
          color: context.colorScheme.onBackground,
        ),
        const SizedBox(height: 32),
        Text(
          message,
          textAlign: TextAlign.center,
          style: context.textTheme.titleMedium,
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: onTryAgain,
          child: Text(context.l10n.tryAgain),
        )
      ],
    );
  }
}
