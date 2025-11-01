import 'package:flutter/material.dart';
import '../../app/app_theme.dart';
import '../../mixin/gradient_mixin.dart';

class NotificationsScreen extends StatelessWidget with GradientHelpers {
  final String machineId;
  const NotificationsScreen({super.key, required this.machineId});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final List<Map<String, dynamic>> notifications = [
      {
        'title': 'Maintenance Reminder',
        'body': 'Laser lens calibration recommended after 100 acres.',
        'icon': Icons.build_outlined,
        'time': '2 h ago',
      },
      {
        'title': 'Job Complete',
        'body': 'LW-001 finished Field 7: 14.3 acres weeded.',
        'icon': Icons.check_circle_outline,
        'time': '4 h ago',
      },
      {
        'title': 'Performance Alert',
        'body': 'Average speed dropped below 0.8 mph due to terrain.',
        'icon': Icons.warning_amber_outlined,
        'time': '7 h ago',
      },
      {
        'title': 'Software Update',
        'body': 'Firmware 2.3.1 ready to install.',
        'icon': Icons.system_update_alt_outlined,
        'time': 'Yesterday',
      },
    ];

    return Scaffold(
      backgroundColor: scheme.background,
      appBar: AppBar(
        title: gradientText(
          'Notifications - $machineId',
          textTheme.titleLarge!,
        ),
        centerTitle: true,
        backgroundColor: scheme.surface,
        foregroundColor: scheme.onSurface,
        elevation: 0,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        separatorBuilder: (_, __) => Divider(color: scheme.outlineVariant),
        itemBuilder: (context, i) {
          final n = notifications[i];
          return ListTile(
            leading: gradientIcon(n['icon'] as IconData),
            title: Text(
              n['title'] as String,
              style: textTheme.titleMedium?.copyWith(color: scheme.onSurface),
            ),
            subtitle: Text(
              n['body'] as String,
              style: textTheme.bodyMedium?.copyWith(
                color: scheme.onSurface.withOpacity(0.7),
              ),
            ),
            trailing: Text(
              n['time'] as String,
              style: textTheme.bodySmall?.copyWith(
                color: scheme.onSurface.withOpacity(0.6),
              ),
            ),
          );
        },
      ),
    );
  }
}
