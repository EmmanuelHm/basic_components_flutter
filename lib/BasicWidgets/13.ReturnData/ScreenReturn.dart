import 'package:basic_components_flutter/BasicWidgets/13.ReturnData/ScreenReturn2.dart';
import 'package:flutter/material.dart';

class ScreenReturn extends StatelessWidget {
  const ScreenReturn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Regresar Info')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _navigateToScreen2AndWaitTheValue(context);
            },
            child: Text("Next Screen"),
          ),
        ));
  }
}

_navigateToScreen2AndWaitTheValue(BuildContext context) async {
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => ScreenReturn2()));

  // Mostrar el SnackBar (Toast)
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
}
