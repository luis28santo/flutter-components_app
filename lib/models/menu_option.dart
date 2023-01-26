import 'package:flutter/cupertino.dart' show Widget, IconData;

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption({
    required this.route,
    required this.icon,
    required this.name,
    required this.screen,
  });
}
