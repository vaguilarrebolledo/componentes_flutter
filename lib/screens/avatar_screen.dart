import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right:5),//crea una pequena separacion
            child: CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.amber[900],
            ),
          )
        ],
      ),
      body: const Center(

         child: CircleAvatar(//crea una imagen como avatar en circular
           maxRadius: 100,//agrandar la imagen
           backgroundImage: NetworkImage('https://as01.epimg.net/meristation/imagenes/2021/08/25/noticias/1629865598_915644_1629865733_noticia_normal_recorte1.jpg'),
         )
      ),
    );
  }
}