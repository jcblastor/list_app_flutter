import 'package:flutter/material.dart';

import 'package:app_list/router/app_routes.dart';
import 'package:app_list/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        itemBuilder: (context, i) => ListTile(
          leading: Icon(menuOptions[i].icon, color: AppTheme.primary),
          title: Text(menuOptions[i].name),
          onTap: () {
            /* opcion 1  
            final route = MaterialPageRoute(
              builder: (context) => const ListView1Screen(),
            );
            Navigator.push(context, route);
          */
            // opcion 2

            Navigator.pushNamed(context, menuOptions[i].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
