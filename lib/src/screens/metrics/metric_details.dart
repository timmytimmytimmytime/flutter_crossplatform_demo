import 'package:flutter/material.dart';

class MetricScreen extends StatelessWidget {
  final String metricTileNumber;
  const MetricScreen({super.key, this.metricTileNumber = '1'});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print('Card tapped metric #$metricNumber');
        Navigator.pushNamed(context, '/');
      },
      child: Scaffold(
        // backgroundColor: #0A0024,
        backgroundColor: const Color(0xFF1B1240),
        appBar: AppBar(
          title: Text(
            'Metrics Screen',
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Text(
            'Metric Screen #$metricTileNumber',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
