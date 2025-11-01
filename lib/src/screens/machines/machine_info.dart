import 'package:flutter/material.dart';
import '../../widgets/card/status_card/status_card.dart';
import '../../widgets/card/metric_card/metric_card.dart';
import '../../widgets/card/map_card/map_card.dart';

class MachineInfoScreen extends StatelessWidget {
  const MachineInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: #0A0024,
      backgroundColor: const Color(0xFF1B1240),
      appBar: AppBar(
        title: Text(
          'Electro Botics',
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            StatusCard(title: 'Weeding', subtitle: 'Turnip'),
            GridView.count(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
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
            MapCard(),
          ],
        ),
      ),
    );
  }
}
