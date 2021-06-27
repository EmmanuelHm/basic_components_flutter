import 'package:flutter/material.dart';
import 'package:basic_components_flutter/BasicWidgets/19.TabBar/Tabbar.dart';

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
      initialRoute: 'tabbar',
      routes: {
        // 'text': (context) => WidgetTexto(),
        // 'recursos': (context) => Recursos(),
        // 'appbar': (context) => WidgetAppbar(),
        // 'btn-navbar': (context) => BottomNavBar(),
        'tabbar': (context) => TabBarWidget(),
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
