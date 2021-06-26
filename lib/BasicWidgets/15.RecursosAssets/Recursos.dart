import 'package:flutter/material.dart';

class Recursos extends StatelessWidget {
  const Recursos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recursos / Assets'),
      ),
      body: Center(
        child: Image(image: AssetImage('assets/images/espacio.jpg')),
      ),
    );
  }
}
