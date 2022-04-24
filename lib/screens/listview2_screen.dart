import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Megaman' , 'Metal Gear', 'Super Smash', 'Final Fantasy'];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
            itemCount: options.length,//numero de items (arreglo)
            itemBuilder: (context,i) => ListTile(
                title: Text(options[i]),
                trailing: const Icon(Icons.arrow_forward_ios),
              ), 
            separatorBuilder: (_,__) => const Divider(), 
          )
        
        );
  }
}