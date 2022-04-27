import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({
    Key? key, 
    required this.imageUrl, 
    this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior:
          Clip.antiAlias, //propiedad sirve para cortar o adecuar el contenido
      elevation: 30,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              18)), //propiedad para redondear tarjeta mas pronunciada
      shadowColor:
          AppTheme.primary.withOpacity(0.6), //sombra con el color que quieras
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('assets/jar-loading.gif'),
          width: double.infinity, //toma todo el ancho posible
          height: 230,
          fit: BoxFit.cover, //se adapta a todo el tamano posible,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        if(name!= null)
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name!)
          )
      ]),
    );
  }
}
