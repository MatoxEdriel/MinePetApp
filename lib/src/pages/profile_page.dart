import 'package:flutter/material.dart';
import 'package:minepet/src/pages/interfaces/interfaces.dart';

class ProfileScreen extends StatelessWidget {
  final User user;
  const ProfileScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome")),
      body: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(
        children: [
          Text(user.name),
          Text(user.id)

        ],


      ),
      
      ),
      

    



    );
  }
}
