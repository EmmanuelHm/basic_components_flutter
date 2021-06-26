import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // Regresar a 'First Page'
              Navigator.pop(context);
            },
            child: Text('Regresar')),
      ),
    );
  }
}
