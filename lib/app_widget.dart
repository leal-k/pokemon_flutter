import 'package:flutter/material.dart';
import 'package:ola_mundo/login.dart';
import 'package:ola_mundo/pika.dart';
import 'package:ola_mundo/squ.dart';
import 'app_controller.dart';
import 'bulba.dart';
import 'char.dart';
import 'home_page.dart';
import 'lab.dart';

class AppWidget extends StatelessWidget {
  final String? titulo;

  const AppWidget({Key? key, this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/out': (context) => Outside(),
              '/home': (context) => HomePage(),
              '/char': (context) => Charmander(),
              '/squ': (context) => Squirtle(),
              '/bul': (context) => Bulba(),
              '/pika': (context) => Pika(),
            },
          );
        });
  }
}
