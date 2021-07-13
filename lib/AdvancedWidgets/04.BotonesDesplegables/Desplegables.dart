import 'package:flutter/material.dart';

class Desplegables extends StatefulWidget {
  const Desplegables({Key? key}) : super(key: key);

  @override
  _DesplegablesState createState() => _DesplegablesState();
}

enum SelectorOptions { option1, option2, option3, option4 }

class _DesplegablesState extends State<Desplegables> {
  // 1. Crear una variable donde indicara el valor actual de nuestro DropdownButton
  String dropdownCurrent = "Opcion 1";
  SelectorOptions? _selectorOptions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              // 2. Rellenamos la lista de opciones a mostrar en el desplegable
              items: ["Opcion 1", "Opcion 2", "Opcion 3"]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              // 3. Personalizar la vista
              icon: Icon(Icons.ac_unit),
              iconSize: 20,
              elevation: 16,
              style: TextStyle(color: Colors.green),
              underline: Container(
                height: 2,
                color: Colors.blue,
              ),
              // 4. Actualizar el valor que se ha escogido
              value: dropdownCurrent,
              onChanged: (String? value) {
                setState(() {
                  dropdownCurrent = value!;
                });
              },
            ),
            PopupMenuButton<SelectorOptions>(
                onSelected: (SelectorOptions result) {
                  setState(() {
                    _selectorOptions = result;
                  });
                },
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<SelectorOptions>>[
                      const PopupMenuItem<SelectorOptions>(
                          value: SelectorOptions.option1,
                          child: Text('Option 1')),
                      const PopupMenuItem<SelectorOptions>(
                          value: SelectorOptions.option2,
                          child: Text('Option 2')),
                      const PopupMenuItem<SelectorOptions>(
                          value: SelectorOptions.option3,
                          child: Text('Option 3')),
                      const PopupMenuItem<SelectorOptions>(
                          value: SelectorOptions.option4,
                          child: Text('Option 4')),
                    ])
          ],
        ),
      ),
    );
  }
}
