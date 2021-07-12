import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  SwitchWidget({Key? key}) : super(key: key);

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Switch(
            value: _switchValue,
            onChanged: (bool? valueIn) {
              setState(() {
                _switchValue = valueIn!;
                print(_switchValue);
              });
            }),
      ),
    );
  }
}
