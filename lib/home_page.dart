//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class Outside extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OutsideState();
  }
}

class OutsideState extends State<Outside> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       UserAccountsDrawerHeader(
      //           decoration: BoxDecoration(color: Colors.red),
      //           currentAccountPicture: ClipRRect(
      //             borderRadius: BorderRadius.circular(50),
      //             child: Image.asset(
      //               'assets/img/ash2.jpg',
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           accountName: Text('Ash Ketchum'),
      //           accountEmail: Text('ash_ketchum@profoak.com')),
      //       ListTile(
      //           leading: Icon(Icons.home_outlined),
      //           title: Text('Início'),
      //           onTap: () {
      //             Navigator.of(context).pushReplacementNamed('/home');
      //             print('home');
      //           }),
      //       ListTile(
      //           leading: Icon(Icons.local_fire_department_outlined),
      //           title: Text('Charmander'),
      //           onTap: () {
      //             Navigator.of(context).pushReplacementNamed('/char');
      //             print('charmander');
      //           }),
      //       ListTile(
      //           leading: Icon(Icons.water),
      //           title: Text('Squirtle'),
      //           onTap: () {
      //             Navigator.of(context).pushReplacementNamed('/squ');
      //             print('charmander');
      //           }),
      //       ListTile(
      //           leading: Icon(Icons.grass_outlined),
      //           title: Text('Bulbassauro'),
      //           onTap: () {
      //             Navigator.of(context).pushReplacementNamed('/bul');
      //             print('charmander');
      //           }),
      //       ListTile(
      //           leading: Icon(Icons.bolt_outlined),
      //           title: Text('Pikachu'),
      //           onTap: () {
      //             Navigator.of(context).pushReplacementNamed('/pika');
      //             print('charmander');
      //           }),
      //       ListTile(
      //           leading: Icon(Icons.exit_to_app),
      //           title: Text('Sair'),
      //           onTap: () {
      //             Navigator.of(context).pushReplacementNamed('/');
      //           })
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                //repeat: ImageRepeat.repeat,
                image: AssetImage('assets/img/labout.png'))),
        width: double.infinity,
        height: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          //Text('Contador: $count', style: TextStyle(fontSize: 20)),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              'Bem vindo(a) ao centro de treinamento \ndo Professor Carvalho!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(.75)),
              child: const Text(
                  'Aqui você começará sua jornada pokémon! \nPara isso, entre no laboratório:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    // backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                  child: const Text(
                    'Entrar',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  )),
            ),
          ),
        ]),
      ),
    );
  }
}
