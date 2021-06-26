import 'package:flutter/material.dart';
import 'package:basic_components_flutter/BasicWidgets/12.ArgumentosNavegacion/Argumentos.dart';

class Args2Page extends StatelessWidget {
  const Args2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obtenemos los datos por parametro
    final args = ModalRoute.of(context)!.settings.arguments as Argumentos;

    return Scaffold(
      appBar: AppBar(
        title: Text("Argumentos Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nombre: ${args.name}',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'Edad: ${args.age}',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  // Regresar a 'First Page'
                  Navigator.pop(context);
                },
                child: Text('Regresar')),
          ],
        ),
      ),
    );
  }
}
