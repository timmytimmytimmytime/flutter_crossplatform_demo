import 'package:flutter/material.dart';
import '../../../app/app_theme.dart';

class StatusCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const StatusCard({
    super.key,
    this.title = 'Weeding',
    this.subtitle = 'Turnip',
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = scheme.brightness == Brightness.dark;

    // Background: gradient in dark mode, light accent in light mode
    final BoxDecoration decoration = isDark
        ? const BoxDecoration(
            gradient: LinearGradient(
              colors: [kBrandPrimary, kBrandSecondary],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          )
        : BoxDecoration(
            color: scheme.primary.withOpacity(0.15),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          );

    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: decoration,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: isDark
                            ? Colors.white
                            : scheme.onSurface.withOpacity(0.9),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: isDark
                            ? Colors.white70
                            : scheme.onSurface.withOpacity(0.7),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
