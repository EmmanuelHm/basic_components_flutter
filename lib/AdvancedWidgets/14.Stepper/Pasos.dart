import 'package:flutter/material.dart';

class Pasos extends StatefulWidget {
  const Pasos({Key? key}) : super(key: key);

  @override
  _PasosState createState() => _PasosState();
}

class _PasosState extends State<Pasos> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper / Pasos"),
      ),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep >= 3) return;
          setState(() {
            _currentStep++;
          });
        },
        onStepCancel: () {
          if (_currentStep <= 0) return;
          setState(() {
            _currentStep--;
          });
        },
        steps: [
          Step(
              title: Text("Introduccion"),
              content: SizedBox(
                width: 110,
                height: 110,
              )),
          Step(
              title: Text("Desarrollo"),
              content: SizedBox(
                width: 110,
                height: 110,
              )),
          Step(
              title: Text("Diseño"),
              content: SizedBox(
                width: 110,
                height: 110,
              )),
          Step(
              title: Text("Test"),
              content: SizedBox(
                width: 110,
                height: 110,
              )),
        ],
      ),
    );
  }
}
