import 'package:flutter/material.dart';
import 'package:widgets_app/config/presentations/screens/home/home_screen.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

import 'config/presentations/screens/buttons/buttons_screen.dart';
import 'config/presentations/screens/cards/cards_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      home: const HomeScreen(),
      routes: {
        '/buttons':(context) => const ButtonsScreen(),
        '/cards':(context) => const CardsScreen(),
      },
      );
  }
}
