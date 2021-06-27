import 'package:flutter/material.dart';
import 'package:basic_components_flutter/BasicWidgets/18.BottonNavigatorBar/ExtraScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // Indicador
  int _selectedIndex = 0;

  // Pantallas a mostrar (Widgets)
  static List<Widget> _widgetOptions = [
    Text('Index 0: Inicio'),
    Text('Index 1: Favoritos'),
    Text('Index 2: Tareas'),
    ExtraScreen()
  ];

  // Funcion cambiar pantalla
  void _changeNvigator(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('BottomNavigationBar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.purple,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Home'),
        ],
        onTap: _changeNvigator,
      ),
    );
  }
}
