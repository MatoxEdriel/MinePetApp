
import 'package:flutter/material.dart';
import 'package:minepet/src/widget/MyHomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uso de widget ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),

      //Recuerda que home hace que sea el primer widget que se vea
      home: const Myhomepage(),
    );
  }
}
