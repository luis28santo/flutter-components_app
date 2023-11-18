import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    // MenuOption(
    //     route: 'home',
    //     icon: Icons.home_rounded,
    //     name: 'Home Screen',
    //     screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt_outlined,
        name: 'List View 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt_sharp,
        name: 'List View 2',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert_sharp,
        name: 'Alerts',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        name: 'Cards',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle,
        name: 'Circle Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_fill_outlined,
        name: 'Animated Container',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input_rounded,
        name: 'Text Inputs',
        screen: const InputScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (var option in AppRoutes.menuOptions) {
      appRoutes
          .addAll({option.route: (BuildContext buildContext) => option.screen});
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext buildContext) => const HomeScreen(),
  //   'listview1': (BuildContext buildContext) => const ListView1Screen(),
  //   'listview2': (BuildContext buildContext) => const ListView2Screen(),
  //   'alert': (BuildContext buildContext) => const AlertScreen(),
  //   'card': (BuildContext buildContext) => const CardScreen(),
  // };

  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
