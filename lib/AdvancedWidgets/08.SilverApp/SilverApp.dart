import 'package:flutter/material.dart';

class SilverAppWidget extends StatefulWidget {
  const SilverAppWidget({Key? key}) : super(key: key);

  @override
  _SilverAppWidgetState createState() => _SilverAppWidgetState();
}

class _SilverAppWidgetState extends State<SilverAppWidget> {
  @override
  Widget build(BuildContext context) {
    // 1. SilverApp sustituimos el contenido por un customScrollView
    /**
     * SilverAppbar: Appbar con funcionalidades customizables. Integra un ScrollView que permite ampliar o desampliar dicha zona
     */
    // 2. SilverApp, eliminamos el Appbar de la pantalla principal
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            floating: true,
            pinned: false,
            snap: false,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: FlutterLogo(),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.favorite),
                tooltip: "Favoritos",
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.star),
                tooltip: "Star",
                onPressed: () {},
              ),
            ],
            bottom: PreferredSize(
              child: Icon(Icons.ac_unit),
              preferredSize: Size.fromHeight(50),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
              ListTile(
                title: Text('Item'),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
