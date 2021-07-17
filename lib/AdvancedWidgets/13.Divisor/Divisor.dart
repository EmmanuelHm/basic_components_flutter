import 'package:flutter/material.dart';

class Divisor extends StatefulWidget {
  const Divisor({Key? key}) : super(key: key);

  @override
  _DivisorState createState() => _DivisorState();
}

class _DivisorState extends State<Divisor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Divisor"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 25,
            thickness: 4,
            indent: 15,
            endIndent: 15,
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
