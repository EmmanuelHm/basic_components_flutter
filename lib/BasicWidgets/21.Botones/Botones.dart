import 'package:flutter/material.dart';

class Botones extends StatefulWidget {
  const Botones({Key? key}) : super(key: key);

  @override
  _BotonesState createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botones'),
        centerTitle: true,
      ),
      body: Center(
        child: ButtonBar(
          children: [
            // TextButton (antes FlatButton)
            TextButton(
                onPressed: () {},
                child: Text('TextButton'),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Colors.white,
                    backgroundColor: Colors.green)),

            // IconButton
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_balance_wallet_sharp),
              color: Colors.red,
              highlightColor: Colors.orange,
            ),

            // OutlinedButton (antes OutlineButton)
            OutlinedButton(
                onPressed: () {},
                child: Text('OutlinedButton'),
                style: OutlinedButton.styleFrom(primary: Colors.purple)),

            // ElevatedButton (antes RaisedButton)
            ElevatedButton(onPressed: () {}, child: Text('ElevatedButton'))
          ],
        ),
      ),

      // FloatingButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.alarm_add),
      ),
    );
  }
}
