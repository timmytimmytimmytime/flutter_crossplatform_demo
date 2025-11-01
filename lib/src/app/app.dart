import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';
import 'app_theme.dart';
import '../screens/home/home_screen.dart';
import '../widgets/viewport/adaptive_viewport.dart'; // ✅ your custom file

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, theme, _) {
          return AdaptiveViewport(
            // 👇 wraps entire app, restoring your mobile-like browser view
            child: MaterialApp(
              title: 'Electro Botics',
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: theme.isDarkMode ? ThemeMode.dark : ThemeMode.light,
              home: const HomeScreen(),
            ),
          );
        },
      ),
    );
  }
}
