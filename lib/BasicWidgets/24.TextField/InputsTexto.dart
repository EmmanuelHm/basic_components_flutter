import 'package:flutter/material.dart';

class InputsTexto extends StatefulWidget {
  InputsTexto({Key? key}) : super(key: key);

  @override
  _InputsTextoState createState() => _InputsTextoState();
}

class _InputsTextoState extends State<InputsTexto> {
  String _valueTexto = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Campos de texto'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre',
                ),
                onSubmitted: (value) {
                  setState(() {
                    _valueTexto = value;
                  });
                },

                // PARA QUE SE VAYAN VIENDO LOS CAMBIOS AL MOMENTO
                // onChanged: (value) {
                //   setState(() {
                //     _valueTexto = value;
                //   });
                // },
              ),
              SizedBox(
                height: 10,
              ),
              Text("$_valueTexto")
            ],
          ),
        ),
      ),
    );
  }
}
