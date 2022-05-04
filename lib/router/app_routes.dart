import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //*TODO borrar home
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_outlined),
    MenuOption(route: 'Listview1', name: 'Listview tipo 1', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'Listview2', name: 'Listview tipo 2', screen: const Listview2Screen(), icon: Icons.list_alt_outlined),
    MenuOption(route: 'alert', name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.admin_panel_settings_sharp),
    MenuOption(route: 'card', name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.card_giftcard),
    MenuOption(route: 'avatar', name: 'Avatar - Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle),
    MenuOption(route: 'animated', name: 'Animated - Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', name: 'Text - Inputs', screen: const InputScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'slider', name: 'Sliders & Checks', screen: const SliderScreen(), icon: Icons.social_distance_sharp),
    MenuOption(route: 'listviewbuilder', name: 'InfiniteScroll & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = { };
      appRoutes.addAll({ 'home' : (BuildContext context ) => const HomeScreen()});
      for (final option in menuOptions ) {
        appRoutes.addAll({option.route : (BuildContext context) =>  option.screen  });
      }
   

    return appRoutes; 
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    //print(settings);
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
