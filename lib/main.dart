import 'package:flutter/material.dart';

import 'package:app_list/router/app_routes.dart';
import 'package:app_list/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      // para manejar rutas que no tenemos
      onGenerateRoute: AppRoutes.onGenerateRoute,
      // modilficar colores
      theme: AppTheme.lightTheme,
    );
  }
}
