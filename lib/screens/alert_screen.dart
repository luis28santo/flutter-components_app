import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext buildContext) {
    showDialog(
        barrierDismissible: false,
        context: buildContext,
        builder: (buildContext) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Hola Mundo'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(15),
            ),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de una alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(buildContext),
                  child: const Text('Cancelar')),
              TextButton(
                  onPressed: () => Navigator.pop(buildContext),
                  child: const Text('OK')),
            ],
          );
        });
  }

  void displayDialogIOS(BuildContext buildContext) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: buildContext,
        builder: (buildContext) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de una alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(buildContext),
                child:
                    const Text('Cancelar', style: TextStyle(color: Colors.red)),
              ),
              TextButton(
                onPressed: () => Navigator.pop(buildContext),
                child: const Text('OK'),
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
        // style: ElevatedButton.styleFrom(
        //     backgroundColor: AppTheme.primaryColor,
        //     shape: const StadiumBorder(),
        //     elevation: 0),
        onPressed: () => Platform.isAndroid
            ? displayDialogAndroid(context)
            : displayDialogIOS(context),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text('Mostrar Alerta', style: TextStyle(fontSize: 20)),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
      ),
    );
  }
}
