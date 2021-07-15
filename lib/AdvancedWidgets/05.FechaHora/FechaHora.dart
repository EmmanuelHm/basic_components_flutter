import 'package:flutter/material.dart';

class FechaHora extends StatefulWidget {
  const FechaHora({Key? key}) : super(key: key);

  @override
  _FechaHoraState createState() => _FechaHoraState();
}

class _FechaHoraState extends State<FechaHora> {
  // Variable de Fecha
  DateTime _date = DateTime.now();
  // Variable de Tiempo
  TimeOfDay _time = TimeOfDay.now();

  // Funcion para llamar el Fecha
  Future<Null> selectDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(1940),
        lastDate: DateTime(2030),
        builder: (context, child) {
          return Theme(data: ThemeData.dark(), child: child!);
        });

    if (pickedDate != null && pickedDate != _date) {
      setState(() {
        _date = pickedDate;
        print(_date.toString());
      });
    }
  }

  // Funcion para llamar el reloj
  Future<Null> selectTimePicker(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: _time,
        builder: (context, child) {
          return Theme(data: ThemeData.dark(), child: child!);
        });

    if (pickedTime != null && pickedTime != _date) {
      setState(() {
        _time = pickedTime;
        print(_time.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fecha y hora'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Mostrar Calendario
            TextButton(
              child: Text('Lanzar nuestro Date Picker'),
              onPressed: () => selectDatePicker(context),
            ),
            Text(_date.toString()),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.black,
              height: 5,
            ),
            SizedBox(
              height: 20,
            ),
            // Mostrar Reloj
            TextButton(
              child: Text('Lanzar nuestro Time Picker'),
              onPressed: () => selectTimePicker(context),
            ),
            Text(_time.toString())
          ],
        ),
      ),
    );
  }
}
