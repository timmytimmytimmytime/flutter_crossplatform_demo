import 'package:flutter/material.dart';
import '../app/app_theme.dart';

mixin GradientHelpers {
  /// Gradient brand icon
  Widget gradientIcon(IconData icon, {double size = 28}) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [kBrandPrimary, kBrandSecondary],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(bounds),
      child: Icon(icon, size: size, color: Colors.white),
    );
  }

  /// Gradient brand text
  Widget gradientText(String text, TextStyle baseStyle) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [kBrandPrimary, kBrandSecondary],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(bounds),
      child: Text(text, style: baseStyle.copyWith(color: Colors.white)),
    );
  }
}
