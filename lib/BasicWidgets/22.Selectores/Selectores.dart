import 'package:flutter/material.dart';

enum Cars { ferrari, mercedes }

class Selectores extends StatefulWidget {
  Selectores({Key? key}) : super(key: key);

  @override
  _SelectoresState createState() => _SelectoresState();
}

class _SelectoresState extends State<Selectores> {
  // 1. Crear variable que identifique el estado actual
  bool _isActive = false;
  bool _isActiveTile = false;
  bool _isActiveRadio = false;

  Cars _opcion = Cars.ferrari;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Selectores'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Checkbox(
            value: _isActive,
            onChanged: (bool? value) {
              setState(() {
                _isActive = value!;
                print(_isActive);
              });
            },
          ),
          CheckboxListTile(
              title: Text('Titulo 1'),
              value: _isActiveTile,
              onChanged: (bool? value) {
                setState(() {
                  _isActiveTile = value!;
                });
              }),

          // RADIOBUTTONS
          ListTile(
            title: Text('Ferrari'),
            leading: Radio(
              value: Cars.ferrari,
              groupValue: _opcion,
              onChanged: (Cars? value) {
                setState(() {
                  _opcion = value!;
                  print(_opcion);
                });
              },
            ),
          ),
          ListTile(
            title: Text('Mercedes'),
            leading: Radio(
              value: Cars.mercedes,
              groupValue: _opcion,
              onChanged: (Cars? value) {
                setState(() {
                  _opcion = value!;
                  print(_opcion);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
