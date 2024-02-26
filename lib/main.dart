import 'package:app_widgets/config/theme/aap_theme.dart';
import 'package:app_widgets/presentation/screens/buttons/buttons_screen.dart';
import 'package:app_widgets/presentation/screens/cards/cars_screen.dart';
import 'package:app_widgets/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: AppTheme(selectedColor: 0).theme(),
      debugShowCheckedModeBanner: false,
      home:  const HomeScreen(),
      routes: {
        '/buttons':(context) => const ButtonsScreen(),
        '/cards':(context) => const CardsScreen(),
      },
    );
  }
}
