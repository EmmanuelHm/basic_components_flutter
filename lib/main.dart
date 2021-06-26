import 'package:basic_components_flutter/BasicWidgets/16.ImageIcon/ImageIcon.dart';
import 'package:flutter/material.dart';

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
      initialRoute: 'image-icon',
      routes: {
        // 'text': (context) => WidgetTexto(),
        // 'recursos': (context) => Recursos(),
        'image-icon': (context) => ImagenesIcons()
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
