import 'package:flutter/material.dart';

import '../screens/screens.dart';
import 'package:app_list/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'listview1',
      name: 'Lista tipo 1',
      screen: const ListView1Screen(),
      icon: Icons.list_rounded,
    ),
    MenuOption(
      route: 'listview2',
      name: 'Lista tipo 2',
      screen: const ListView2Screen(),
      icon: Icons.list_alt_rounded,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alertas - Alerts',
      screen: const AlertScreen(),
      icon: Icons.add_alert_outlined,
    ),
    MenuOption(
      route: 'card',
      name: 'Tarjetas - Cards',
      screen: const CardScreen(),
      icon: Icons.card_membership,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOption(
      route: 'animated',
      name: 'Animate Container',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_rounded,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Text Inputs',
      screen: const InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOption(
        route: 'slider',
        name: 'Slider Screen',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video),
    MenuOption(
      route: 'listviesbuilder',
      name: 'Infinite & Pull to refresh',
      screen: const ListViewBuilderScreen(),
      icon: Icons.build_circle_outlined,
    ),
  ];

  /* rutas: esto funciona bien opcion 1
    static Map<String, Widget Function(BuildContext)> routes = {
      'home': (context) => const HomeScreen(),
      'listview1': (context) => const ListView1Screen(),
      'listview2': (context) => const ListView1Screen(),
      'alert': (context) => const AlertScreen(),
      'card': (context) => const CardScreen(),
    };
  */
  // routas: mas flexible opcion 2
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
