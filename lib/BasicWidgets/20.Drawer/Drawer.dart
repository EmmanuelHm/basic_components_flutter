import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer/Menu lateral'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
                child: Text(
                  'Drawer Cabecera',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Mensajes'),
            ),
            ListTile(
              leading: Icon(Icons.more),
              title: Text('Otros'),
            ),
          ],
        ),
      ),
    );
  }
}
