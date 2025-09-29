import 'package:flutter/material.dart';
import 'package:minepet/src/pages/home_page.dart';
import 'package:minepet/src/widget/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // aqui existe el splash-screen
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MinePet ',
      home: const SplashScreen(),
      routes: {

        '/home': (context) => const Myhomepage()
      },
    );
  }
}
