import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // Column(
      children: [
        Flexible(
            //Espacio que va a ocupar el widget
            flex: 2,
            //Hijo del Widget 'Flexible' => 'Container'
            child: Container(
              color: Colors.red,
            )),
        Flexible(
            flex: 3,
            child: Container(
              color: Colors.blue,
            )),
        Flexible(
            flex: 1,
            child: Container(
              color: Colors.green,
            )),
      ],
    );
  }
}
