import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes Flutter'),
          //backgroundColor: Colors.amber,
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(menuOptions[index].name),
                  //leading: const Icon(Icons.accessibility_outlined),
                  leading: Icon(menuOptions[index].icon , color: AppTheme.primary,),
                  onTap: () {
                    //final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
                    //Navigator.pushreplacement  //destruye la vista anterior, sirve para entrar a un sistema
                    //Navigator.push(context, route);
                    //navigator.pushname //cambia de vista con el nombre de ella
                    //Navigator.pushNamed(context, 'card2');
                    Navigator.pushNamed(
                        context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
