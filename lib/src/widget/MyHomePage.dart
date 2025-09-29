import 'package:flutter/material.dart';
import 'package:minepet/src/widget/options.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<Myhomepage> {
  int _selectedOption = 0;

  static final  List<Widget> _pages = <Widget>[

    buttonStateLess(text: "Integrando widget con otro ", color: Colors.black),


    Center(child: Container(
         margin: const EdgeInsets.all(10.0),
    color: Colors.amber[600],
    width: 48.0,
    height: 48.0,


    )),
    Center(child: Text("Home", style: TextStyle(fontSize: 30))),
    Center(child: Text("Configuration", style: TextStyle(fontSize: 30))),

    Center(child: Text("yours pets", style: TextStyle(fontSize: 30)))

  ];

  void _onItemTapped(int currentOption) {
    setState(() {
      _selectedOption = currentOption;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Aqui entonces yo USO SCAFFOLD que es un tipo de widget pero con estilos por default una estructura
    //basica que proporciona

    return Scaffold(
      appBar: AppBar(title: const Text("Primera prueba ")),
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
