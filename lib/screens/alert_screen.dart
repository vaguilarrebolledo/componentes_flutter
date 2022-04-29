import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(
                mainAxisSize:
                    MainAxisSize.min, //determina el ancho de la columna
                children: const [
                  Text('Este es contenido de una alerta'),
                  SizedBox(height: 10), //hacer separacion
                  FlutterLogo(size: 100),
                ]),
                actions: [
                 
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancelar',style: TextStyle(color:Colors.red)),
                  ),
                   TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Aceptar')
                  ),
                  
                ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadiusDirectional.circular(10)), //widget para bordes
            elevation: 5,
            title: const Text('Titulo'),
            content: Column(
                mainAxisSize:
                    MainAxisSize.min, //determina el ancho de la columna
                children: const [
                  Text('Este es contenido de una alerta'),
                  SizedBox(height: 10), //hacer separacion
                  FlutterLogo(size: 100),
                ]),
            actions: [
              
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok')),
                   TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancelar',style: TextStyle(color:Colors.red)),
                  ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            //style: ElevatedButton.styleFrom(
            // primary: Colors.amber,
            // shape: const StadiumBorder(),
            // elevation: 0
            //),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Mostrar alerta',
                style: TextStyle(fontSize: 20),
              ),
            ),
            onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context),
            //onPressed: () => displayDialogIOS(context)
            ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
