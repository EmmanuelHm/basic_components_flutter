import 'package:basic_components_flutter/BasicWidgets/12.ArgumentosNavegacion/Argumentos.dart';
import 'package:flutter/material.dart';

class Args1Page extends StatelessWidget {
  const Args1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Argumentos Page 1'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'arg2',
                  arguments: Argumentos('Emmanuel', 23));
            },
            child: Text('Llevame a Args 2')),
      ),
    );
  }
}
