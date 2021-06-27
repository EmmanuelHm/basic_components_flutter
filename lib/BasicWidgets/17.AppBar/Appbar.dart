import 'package:flutter/material.dart';

class WidgetAppbar extends StatelessWidget {
  const WidgetAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi AppBar'),
        backgroundColor: Colors.purple,
        centerTitle: true,
        elevation: 15,
        leading: Icon(Icons.ac_unit),
        actions: [
          IconButton(
              onPressed: () {
                print('Boton Pulsado 1');
              },
              tooltip: 'Icono de prueba',
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: () {
                print('Boton Pulsado 2');
              },
              tooltip: 'Icono de prueba',
              icon: Icon(Icons.access_alarms_outlined)),
        ],
        brightness: Brightness.dark,
        toolbarOpacity: 0.5,
      ),
    );
  }
}
