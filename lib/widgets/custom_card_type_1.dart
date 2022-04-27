import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(//widget de la tarjeta
      child: Column(//widget columna para tener varios objetos hacia abajo
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)),
          
          const ListTile(
            leading: Icon(Icons.album_rounded,color: AppTheme.primary,),
            title: Text('soy un titulo'),
            subtitle: Text('Tempor esse Lorem consequat minim sint quis ex pariatur aute quis ut dolore. Ipsum irure ullamco ea mollit deserunt consequat velit aliqua est elit elit. Ea ex do commodo id laboris amet dolore fugiat. Adipisicing voluptate anim sunt ullamco consequat proident consectetur minim est in fugiat ex pariatur dolor.'),
          ),


          Padding(//al envolver el Row en padding le deja una separacion a los botones por todos sus lados
            padding: const EdgeInsets.only(right:5),//el righ hace padding solo para el lado derecho
            child: Row(//Para widgets que estan al lado de otro
              mainAxisAlignment: MainAxisAlignment.end,//alinea hacia la derecha
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: (){}, 
                   child: const Text('Ok')
                ),
            ],),
          )
       
        
       
       
        ],
      ),
    );
  }
}