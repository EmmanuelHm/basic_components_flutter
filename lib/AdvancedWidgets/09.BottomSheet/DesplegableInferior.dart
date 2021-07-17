import 'package:flutter/material.dart';

class DesplegableInferior extends StatefulWidget {
  const DesplegableInferior({Key? key}) : super(key: key);

  @override
  _DesplegableInferiorState createState() => _DesplegableInferiorState();
}

class _DesplegableInferiorState extends State<DesplegableInferior> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desplegable Inferior'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Launch BottomSheet'),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('Item'),
                            leading: Icon(Icons.ac_unit),
                          ),
                          ListTile(
                            title: Text('Item'),
                            leading: Icon(Icons.ac_unit),
                          ),
                          ListTile(
                            title: Text('Item'),
                            leading: Icon(Icons.ac_unit),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
