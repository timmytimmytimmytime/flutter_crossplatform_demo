import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_routes.dart';
import '../theme_provider.dart';
import 'app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, theme, _) {
          return MaterialApp(
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: theme.isDarkMode ? ThemeMode.dark : ThemeMode.light,
            onGenerateRoute: generateRoute,
          );
        },
      ),
    );
  }
}
