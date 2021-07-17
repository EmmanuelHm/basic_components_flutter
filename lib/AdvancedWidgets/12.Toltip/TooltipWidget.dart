import 'package:flutter/material.dart';

class TooltipWidget extends StatefulWidget {
  const TooltipWidget({Key? key}) : super(key: key);

  @override
  _TooltipWidgetState createState() => _TooltipWidgetState();
}

class _TooltipWidgetState extends State<TooltipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tooltip"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tooltip(
                  message: "El reloj",
                  child: IconButton(
                    icon: Icon(Icons.access_time),
                    onPressed: () {},
                  )),
              Tooltip(
                  message: "Contactos",
                  child: IconButton(
                    icon: Icon(Icons.account_box),
                    onPressed: () {},
                  )),
              Tooltip(
                  message: "Infinito",
                  child: IconButton(
                    icon: Icon(Icons.all_inclusive),
                    onPressed: () {},
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
