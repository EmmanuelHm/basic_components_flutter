import 'package:flutter/material.dart';

class ScreenReturn2 extends StatelessWidget {
  const ScreenReturn2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Información')),
        body: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context, 'Valor desde pantalla 2'),
            child: Text("Regresar con valor"),
          ),
        ));
  }
}
