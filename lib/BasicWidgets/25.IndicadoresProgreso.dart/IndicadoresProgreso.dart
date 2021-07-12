import 'dart:async';

import 'package:flutter/material.dart';

class IndicadoresProgreso extends StatefulWidget {
  const IndicadoresProgreso({Key? key}) : super(key: key);

  @override
  _IndicadoresProgresoState createState() => _IndicadoresProgresoState();
}

class _IndicadoresProgresoState extends State<IndicadoresProgreso> {
  double _progreso = 0.0;
  int _duration = 1;

  void startTimer() {
    Timer.periodic(Duration(seconds: _duration), (timer) {
      setState(() {
        if (_progreso == _duration) {
          timer.cancel();
        } else {
          _progreso += 0.1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indicadores de progreso'),
        centerTitle: true,
        backgroundColor: Colors.yellow[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                _progreso = 0;
              });
              startTimer();
            },
            child: Text('Iniciar Timer'),
          ),
          SizedBox(
            height: 50,
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation(Colors.amber),
            strokeWidth: 10,
            value: _progreso,
          ),
          SizedBox(
            height: 50,
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation(Colors.red),
            minHeight: 20,
            value: _progreso,
          )
        ],
      ),
    );
  }
}
