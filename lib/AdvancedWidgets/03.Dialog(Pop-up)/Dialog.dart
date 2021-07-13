import 'package:flutter/material.dart';

class DialogWidget extends StatefulWidget {
  DialogWidget({Key? key}) : super(key: key);

  @override
  _DialogWidgetState createState() => _DialogWidgetState();
}

enum options { YES, NO, MAYBE }

class _DialogWidgetState extends State<DialogWidget> {
  String _optionSelectedString = "Click aquí";

  void _setOptionSelected(String value) {
    setState(() {
      _optionSelectedString = value;
    });
  }

  Future<void> _showDialog() async {
    switch (await showDialog<options>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            backgroundColor: Colors.grey,
            titlePadding: EdgeInsets.all(10),
            title: Text(
              'Te gusta Comer?',
              style: TextStyle(color: Colors.white),
            ),
            children: [
              SimpleDialogOption(
                child: Text(
                  'Sí',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => Navigator.pop(context, options.YES),
              ),
              SimpleDialogOption(
                child: Text(
                  'No',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => Navigator.pop(context, options.NO),
              ),
              SimpleDialogOption(
                child: Text(
                  'Quiza',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => Navigator.pop(context, options.MAYBE),
              ),
            ],
          );
        })) {
      case options.YES:
        _setOptionSelected('Yes');
        break;
      case options.NO:
        _setOptionSelected('No');
        break;
      case options.MAYBE:
        _setOptionSelected('Maybe');
        break;
      default:
        _setOptionSelected('Click aquí');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: Text(_optionSelectedString), onPressed: _showDialog),
            ElevatedButton(
                child: Text('AlertDialog'),
                onPressed: () => showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Cuidado!'),
                        content: Text('¿Quieres salir de la app?'),
                        actions: [
                          TextButton(
                            child: Text('Sí'),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          TextButton(
                            child: Text('No'),
                            onPressed: () => Navigator.of(context).pop(),
                          )
                        ],
                      );
                    })),
            Builder(builder: (BuildContext context) {
              return ElevatedButton(
                child: Text('SnackBar'),
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Soy un SnackBar')));
                },
              );
            })
          ],
        ),
      )),
    );
  }
}
