import 'package:flutter/material.dart';

class ImagenesIcons extends StatelessWidget {
  const ImagenesIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagenes / Iconos'),
      ),
      body: Column(
        children: [
          // IMAGENES
          Image(
            image: AssetImage('assets/images/espacio.jpg'),
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image(
              height: 150,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              // image: AssetImage('assets/images/atardecer.jpg'),

              // Imagen de Internet
              image: NetworkImage(
                  'https://tvazteca.brightspotcdn.com/dims4/default/7aa5298/2147483647/strip/true/crop/1200x800+0+0/resize/968x645!/format/jpg/quality/80/?url=https%3A%2F%2Ftvazteca.brightspotcdn.com%2Fc7%2Faf%2F809ea91b42298e265c17d5e3502a%2Fclima-mexico-7-marzo.jpg'),
            ),
          ),

          // ICONOS

          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 60,
          )
        ],
      ),
    );
  }
}
