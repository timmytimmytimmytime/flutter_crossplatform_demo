import 'package:flutter/material.dart';
import '../widgets/viewport/adaptive_viewport.dart';
import 'app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveViewport(
      child: MaterialApp(
        // home: HomeScreen(),
        onGenerateRoute: generateRoute,
        theme: ThemeData.dark(useMaterial3: true),
      ),
    );
  }
}
