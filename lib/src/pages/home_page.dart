import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<Myhomepage> {
  int _selectedOption = 0;

  static final List<Widget> _pages = <Widget>[
    Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.amber[600],
        width: 48.0,
        height: 48.0,
      ),
    ),
    Center(child: Text("Home", style: TextStyle(fontSize: 30))),
    Center(child: Text("Configuration", style: TextStyle(fontSize: 30))),

    Center(child: Text("yours pets", style: TextStyle(fontSize: 30))),
  ];

  void _onItemTapped(int currentOption) {
    setState(() {
      _selectedOption = currentOption;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/minePet.png', height: 30),
            const SizedBox(width: 8),

            const Text("MinePet"),
          ],
        ),
        centerTitle: true,
        
      ),
      body: _pages[_selectedOption],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Start'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuration',
          ),
        ],
        currentIndex: _selectedOption,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
