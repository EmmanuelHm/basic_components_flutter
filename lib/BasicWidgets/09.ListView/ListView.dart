import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  ListViewWidget({Key? key}) : super(key: key);

  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  List<String> animals = ["Perro", "Gato", "Nutria", "Zorro"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ELEMENTOS DINAMICOS(ListTile)
      body: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            itemCount: animals.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Card(
                  color: Colors.amber[500],
                  child: ListTile(
                    leading: Icon(Icons.pets),
                    title: Text(animals[index]),
                  ),
                ),
              );
            }),
      ),

      // MUCHOS ELEMENTOS PARA HACER SCROLL
      // body: ListView(

      // children: [
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      //   Card(
      //     color: Colors.amber[600],
      //     child: ListTile(
      //       title: Text('Widget 1: ListTile'),
      //     ),
      //   ),
      // ],
      // ),
    );
  }
}
