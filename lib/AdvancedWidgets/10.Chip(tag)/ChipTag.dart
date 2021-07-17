import 'package:flutter/material.dart';

class ChipTag extends StatefulWidget {
  const ChipTag({Key? key}) : super(key: key);

  @override
  _ChipTagState createState() => _ChipTagState();
}

class _ChipTagState extends State<ChipTag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chip (Tag)"),
      ),
      body: Center(
        child: Chip(
            elevation: 10,
            // padding: EdgeInsets.all(30),
            labelPadding: EdgeInsets.all(10),
            avatar: CircleAvatar(
              backgroundColor: Colors.black45,
              child: Text(
                "M",
                style: TextStyle(color: Colors.white),
              ),
            ),
            label: Text("Música")),
      ),
    );
  }
}
