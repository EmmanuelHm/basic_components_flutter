import 'package:flutter/material.dart';

class ExpansionPanelWidget extends StatefulWidget {
  ExpansionPanelWidget({Key? key}) : super(key: key);

  @override
  _ExpansionPanelWidgetState createState() => _ExpansionPanelWidgetState();
}

class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  List<Item> _listaDeItems = generateItemsList(10);

  @override
  Widget build(BuildContext context) {
    // Scroll que contiene un ExpansionPanel
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Panel'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: _myWidgetExpansionPanel(),
        ),
      ),
    );
  }

  // Widget del ExpansionPanel
  Widget _myWidgetExpansionPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _listaDeItems[index].isExpanded = !isExpanded;
        });
      },
      children: _listaDeItems.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text('${item.title}'),
            );
          },
          body: ListTile(
            title: Text('${item.contentExpandedTitle}'),
            subtitle: Text('Borramos el item de la lista'),
            trailing: Icon(Icons.delete),
            onTap: () {
              setState(() {
                _listaDeItems.removeWhere((currentItem) => item == currentItem);
              });
            },
          ),
          isExpanded: item.isExpanded!,
        );
      }).toList(),
    );
  }
}

// Info del ExpansionPanel
// Item (Modelo)
class Item {
  String? contentExpandedTitle;
  String? title;
  bool? isExpanded;
  // constructor
  Item({this.contentExpandedTitle, this.title, this.isExpanded = false});
}

// Generador del Item (Datos dinamicos)
List<Item> generateItemsList(int sizeOfList) {
  return List.generate(sizeOfList, (int index) {
    return Item(
        contentExpandedTitle: 'Contenido de nuestro item $index',
        title: 'Item $index',
        isExpanded: false);
  });
}
