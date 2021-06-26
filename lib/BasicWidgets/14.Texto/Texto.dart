import 'package:flutter/material.dart';

class WidgetTexto extends StatelessWidget {
  const WidgetTexto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Texto Flutter'),
      ),
      body: Column(
        children: [
          // 1. TEXTO STANDAR DONDE PODEMOS DEFINIR UN ESTILO

          // Texto Normal
          Text('Hola mundo'),
          // Texto con Estilo
          Text(
            'Hola mundo',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.orangeAccent),
          ),
          // Alinear texto en una caja
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Texto alineado',
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
          ),

          // 2. TEXTO ENRIQUECIDO, PERMITE MOSTRAR CADENAS DE TEXTO CON DIFERENTES ESTILOS
          RichText(
              text: TextSpan(
                  text: 'Texto enriquecido ',
                  style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                  children: [
                TextSpan(
                    text: 'bold ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
                TextSpan(text: 'Texto regular'),
              ]))

          //
        ],
      ),
    );
  }
}
