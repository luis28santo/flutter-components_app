import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';
// import 'package:flutter_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        // elevation: 0,
        // backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          MenuOption menuOption = menuOptions[index];

          return ListTile(
            title: Text(menuOption.name),
            leading: Icon(menuOption.icon, color: AppTheme.primaryColor),
            onTap: () => Navigator.pushNamed(context, menuOption.route),
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        itemCount: menuOptions.length,
      ),
    );
  }
}
