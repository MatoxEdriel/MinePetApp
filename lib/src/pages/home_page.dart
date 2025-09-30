import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<Myhomepage> {
  int _selectedOption = 0;

  void _onItemTapped(int currentOption) {
    setState(() {
      _selectedOption = currentOption;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = <Widget>[
      Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          color: Theme.of(context).colorScheme.secondary,
          width: 48.0,
          height: 48.0,
        ),
      ),
      Center(child: Text("Home", style: TextStyle(fontSize: 30))),
      Center(child: Text("Configuration", style: TextStyle(fontSize: 30))),
      Center(child: Text("yours pets", style: TextStyle(fontSize: 30))),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/minePet.png', height: 30),
            const SizedBox(width: 8),
            Text(
              "MinePet",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            )

          ],
        ),
        centerTitle: true,
      ),
      body: pages[_selectedOption],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Start'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Your Pets'),
        ],

        currentIndex: _selectedOption,
        onTap: _onItemTapped,
      ),
    );
  }
}
