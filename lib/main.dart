import 'package:flutter/material.dart';
import 'package:basic_components_flutter/AdvancedWidgets/10.Chip(tag)/ChipTag.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Quitar liston de 'Debug'
      debugShowCheckedModeBanner: false,
      title: 'Componentes Flutter',

      // Widget por defecto de aplicacion
      // home: BackData(),

      // Sistema de Rutas
      initialRoute: 'chip',
      routes: {
        'chip': (context) => ChipTag(),
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
