import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  final Color ? textColor;
  final double ? height;
  // final double width;

  const BasicAppButton({
    required this.onPressed,
    required this.title,
    this.height,
    this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, 
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80),
        foregroundColor: textColor,
      ),
      child: Text(title)
    );
  }
} 