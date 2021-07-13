import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  _StackWidgetState createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.red,
              height: 200,
              width: 200,
            ),
            Container(
              color: Colors.blue,
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
