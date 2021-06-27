import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  TabBarWidget({Key? key}) : super(key: key);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('TabBar'),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Noticias',
                  icon: Icon(Icons.ac_unit),
                ),
                Tab(
                  text: 'Favoritos',
                  icon: Icon(Icons.favorite),
                ),
                Tab(text: 'Contactos', icon: Icon(Icons.contact_page)),
                Tab(
                  text: 'Otros',
                  icon: Icon(Icons.other_houses),
                )
              ],
            ),
          ),
          body: Center(
            child: TabBarView(
              children: [
                Text('Noticias'),
                Text('Favoritos'),
                Text('Contactos'),
                Text('Otros'),
              ],
            ),
          ),
        ));
  }
}
