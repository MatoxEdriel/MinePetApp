import 'package:flutter/material.dart';
import 'package:minepet/src/pages/Care/calendar.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(children: [Expanded(child: Calendar())]),
    );
  }
}
