import 'package:flutter/material.dart';
import 'package:minepet/src/core/theme/app_colors.dart';
import 'package:minepet/src/pages/Care/calendar.dart';
import 'package:minepet/src/pages/interfaces/interfaces.dart';
import 'package:minepet/src/pages/profile_page.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomePageState();
}

//Estado
class _MyhomePageState extends State<Myhomepage> {
  int _selectedOption = 0;

  void _onItemTapped(int currentOption) {
    setState(() {
      _selectedOption = currentOption;
    });
  }

  @override
  Widget build(BuildContext context) {
    User user = new User(id: "PROBANDO", name: "Gabriel");
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
      Calendar(),
      ProfileScreen(user: user),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("MinePet"),
        actions: [IconButton(icon: const Icon(Icons.camera), onPressed: () {})],
      ),

      drawer: Drawer(child: ListView(padding: EdgeInsets.zero)),
      body: Container(child: pages[_selectedOption]),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.pastelWhite, 
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.pastelPink,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.create_new_folder_rounded),
            label: 'Start',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Mine Pets'),
          BottomNavigationBarItem(
            icon: Icon(Icons.dataset),
            label: 'Care',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],

        currentIndex: _selectedOption,
        onTap: _onItemTapped,
      ),
    );
  }
}
