import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_dev_app/core/configs/theme/app_colors.dart';

class BasicCirCleChooseMode extends StatelessWidget {

  final double? size;
  final Color? color;
  final double? opacity;
  final Widget? child;

  const BasicCirCleChooseMode({
    this.size,
    this.color,
    this.opacity,
    this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: size ?? 80,
          width: size ?? 80,
          decoration: BoxDecoration(
            color: (color ?? AppColors.greyChooseMode).withValues(alpha: opacity ?? 0.5),
            shape: BoxShape.circle,
          ),
          child: child,
        ),
      ),
    );
  }
}
