import 'package:flutter/material.dart';

import 'package:basic_components_flutter/BasicWidgets/11.Navegacion/SecondPage.dart';
import 'package:basic_components_flutter/BasicWidgets/11.Navegacion/FirstPage.dart';

import 'package:basic_components_flutter/BasicWidgets/12.ArgumentosNavegacion/Args1Page.dart';
import 'package:basic_components_flutter/BasicWidgets/12.ArgumentosNavegacion/Args2Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Quitar liston de 'Debug'
      debugShowCheckedModeBanner: false,
      title: 'Componentes Flutter',

      // Widget por defecto de aplicacion
      // home: FirstPage(),

      // Sistema de Rutas
      initialRoute: 'arg1',
      routes: {
        '/': (context) => FirstPage(),
        '/secondPage': (context) => SecondPage(),
        'arg1': (context) => Args1Page(),
        'arg2': (context) => Args2Page(),
      },
    );
  }
}

// SE QUITO PARA '11.NAVEGACION'

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           appBar: AppBar(
//             title: Text('Componentes Básicos Flutter'),
//           ),
//           body: GridViewWidget()),
//     );
//   }
// }
