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
          title: const Text('Desde IOS'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Mensaje para IOS'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancelar',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      // permite que al hacer clic en cualquier lugar fuera del alerta se cierre
      // barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titluo'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el cuerpo de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancelar',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // mandamos el buildContext
          // para determinar que widget usamos dependiendo la plataforma,
          onPressed: () => Platform.isAndroid
              ? displayDialogAndroid(context)
              : displayDialogIOS(context),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Text('Mostrar alerta'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
