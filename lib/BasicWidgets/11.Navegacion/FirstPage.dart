import 'package:basic_components_flutter/BasicWidgets/11.Navegacion/SecondPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // Ir a 'Second Page'

              // FORMA 1:
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => SecondPage()));

              // FORMA 2 (con routes en main):
              Navigator.pushNamed(context, '/secondPage');
            },
            child: Text('Llevame a Page 2')),
      ),
    );
  }
}
