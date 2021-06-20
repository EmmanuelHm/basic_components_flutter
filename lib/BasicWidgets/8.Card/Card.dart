import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: Colors.greenAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.only(top: 25, left: 20),
        shadowColor: Colors.blueAccent,
        elevation: 40,
        child: SizedBox(
          width: 200.0,
          height: 100.0,
          child: Text('Mi Texto dentro del card'),
        ),
      ),
    );
  }
}
