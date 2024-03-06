//import 'package:app_widgets/config/router/app_router.dart';
import 'package:app_widgets/config/router/app_router_name.dart';
import 'package:app_widgets/config/theme/aap_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    
    const ProviderScope(
      child: MainApp()      
      )
      );
    
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
    
      title: 'Flutter Widgets',
      routerConfig: appRouterName,
      theme: AppTheme(selectedColor: 7).theme(),
      debugShowCheckedModeBanner: false,
     // home:  const HomeScreen(),
     // routes: {
     //   '/buttons':(context) => const ButtonsScreen(),
     //   '/cards':(context) => const CardsScreen(),
     /// },
    );
  }
}
