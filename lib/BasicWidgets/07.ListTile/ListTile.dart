import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  bool selectedItem = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // ListTile con titulo
        Card(
          child: ListTile(
            title: Text('Titulo en ListTile'),
          ),
        ),
        // ListTile con titulo y Icono(encabezado)
        Card(
          child: ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text('Icono y Titutlo'),
          ),
        ),
        // ListTile con titulo, encabezado, final
        Card(
          child: ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text('Icono, Titulo y Final'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        // Compactar la vista de un ListTile
        Card(
          child: ListTile(
            dense: true,
            leading: Icon(Icons.add_a_photo),
            title: Text('Compactar ListTile'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        // Explicacion en el ListTile
        Card(
          child: ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text('Subtitulo en el Item'),
            subtitle: Text('Esta es una descripcion de este ListTile'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        // Subtitle con mas espacio (renglones para escribir)
        Card(
          child: ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text('Mas espacio en el Subtitle'),
            subtitle: Text(
                'Subtitulo del Items: aslkdjlaskjdalksjdlaksjdalksjdlaksjdlaksjdlkasjdlaksdjlkasjdl'),
            isThreeLine: true,
            trailing: Icon(Icons.more_vert),
          ),
        ),
        // Desabilitar un ListTile
        Card(
          child: ListTile(
            enabled: false,
            leading: Icon(Icons.add_a_photo),
            title: Text('ListTile Desahabilitado'),
            subtitle: Text('Subtitulo del Item'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        // Resaltar ListTile si es seleccionado
        Card(
          child: ListTile(
            selected: true,
            leading: Icon(Icons.add_a_photo),
            title: Text('ListTile Seleccionado'),
            subtitle: Text('Subtitulo del Item'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        // Evento onTap ()
        Card(
          child: ListTile(
            onTap: () {
              setState(() {
                (!selectedItem) ? selectedItem = true : selectedItem = false;
              });
            },
            selected: selectedItem,
            leading: Icon(Icons.add_a_photo),
            title: Text('Clickeame (Evento)'),
            subtitle: Text(
                'Este item es para realizar el evento onTap en el ListTile'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            onLongPress: () {
              setState(() {
                (!selectedItem) ? selectedItem = true : selectedItem = false;
              });
            },
            selected: selectedItem,
            leading: Icon(Icons.add_a_photo),
            title: Text('Click mas lento'),
            subtitle: Text(
                'Este item es para realizar el evento onLongPress en el ListTile'),
            trailing: Icon(Icons.more_vert),
          ),
        )
      ],
    );
  }
}
