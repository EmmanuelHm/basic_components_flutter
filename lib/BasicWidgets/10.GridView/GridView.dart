import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  GridViewWidget({Key? key}) : super(key: key);

  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  List<Color> myColors = [
    Colors.teal,
    Colors.purple,
    Colors.pink,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    // GRIDVIEW DINAMICO
    return GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: myColors.length,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, int index) {
          return Container(color: myColors[index]);
        });

    //  GRIDVIEW ESTÁTICO

    // return GridView.count(
    //   padding: EdgeInsets.all(10),
    //   crossAxisCount: 2,
    //   mainAxisSpacing: 10,
    //   crossAxisSpacing: 10,
    //   // scrollDirection: Axis.horizontal,
    //   children: [
    //     Container(color: Colors.red),
    //     Container(color: Colors.green),
    //     Container(color: Colors.orange),
    //     Container(color: Colors.blue),
    //   ],
    // );
  }
}
