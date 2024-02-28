//import 'package:app_widgets/config/router/app_router.dart';
import 'package:app_widgets/config/router/app_router_name.dart';
import 'package:app_widgets/config/theme/aap_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: appRouterName,
      theme: AppTheme(selectedColor: 0).theme(),
      debugShowCheckedModeBanner: false,
     // home:  const HomeScreen(),
     // routes: {
     //   '/buttons':(context) => const ButtonsScreen(),
     //   '/cards':(context) => const CardsScreen(),
     /// },
    );
  }
}
