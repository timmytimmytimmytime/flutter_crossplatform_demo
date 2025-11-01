import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';
import '../screens/metrics/metric_details.dart';

class AppRoutes {
  static const home = '/';
  static const chat = '/chat';
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.home:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    default:
      return MaterialPageRoute(
        builder: (_) => MetricScreen(metricTileNumber: settings.name ?? ''),
      );
  }
}
