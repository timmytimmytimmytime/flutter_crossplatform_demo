import 'package:flutter/material.dart';
import '../../widgets/card/status_card/status_card.dart';
import '../../widgets/card/metric_card/metric_card.dart';
import '../../widgets/card/map_card/map_card.dart';
import '../../mixin/gradient_mixin.dart';

class MachineInfoScreen extends StatelessWidget with GradientHelpers {
  final String machineId;
  const MachineInfoScreen({super.key, required this.machineId});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: scheme.background,
      appBar: AppBar(
        backgroundColor: scheme.surface,
        title: gradientText('Info - $machineId', theme.textTheme.titleLarge!),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: StatusCard(
                title: 'Weeding',
                subtitle: 'Turnip',
                // If StatusCard supports colors, pass scheme.primary/secondary there too
              ),
            ),
            const SizedBox(height: 12),
            GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: const [
                MetricCard(
                  title: 'Daily Total Coverage',
                  value: '14.3 ac',
                  subtitle: 'Avg Speed: 2.1 ac/h',
                  metricNumber: 1,
                ),
                MetricCard(
                  title: 'Average Travel Speed',
                  value: '0.86 mph',
                  subtitle: ' ',
                  metricNumber: 2,
                ),
                MetricCard(
                  title: 'Performance',
                  value: '97.3 %',
                  subtitle: 'Weeding 97.3%',
                  metricNumber: 3,
                ),
                MetricCard(
                  title: 'Weeding',
                  value: '6h 48m',
                  subtitle: 'Uptime: 7h36m',
                  metricNumber: 4,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child:
                  MapCard(), // This can also pull its color from scheme.surface if desired
            ),
          ],
        ),
      ),
    );
  }
}
