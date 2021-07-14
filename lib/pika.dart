import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ola_mundo/home_page.dart';

import 'animation_controller.dart';

class Pika extends StatefulWidget {
  const Pika({Key? key}) : super(key: key);

  @override
  _PikaState createState() => _PikaState();
}

class _PikaState extends State<Pika> {
  ControleAnim controller = ControleAnim();
  @override
  void initState() {
    controller.img = '${controller.url}/pika.png';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/img/ash2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                accountName: Text('Ash Ketchum'),
                accountEmail: Text('ash_ketchum@profoak.com')),
            ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text('Início'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                  print('home');
                }),
            ListTile(
                leading: Icon(Icons.local_fire_department_outlined),
                title: Text('Charmander'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/char');
                  print('charmander');
                }),
            ListTile(
                leading: Icon(Icons.water),
                title: Text('Squirtle'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/squ');
                  print('charmander');
                }),
            ListTile(
                leading: Icon(Icons.grass_outlined),
                title: Text('Bulbassauro'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/bul');
                  print('charmander');
                }),
            ListTile(
                leading: Icon(Icons.bolt_outlined),
                title: Text('Pikachu'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/pika');
                  print('charmander');
                }),
            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Sair'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                })
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Pikachu'),
      ),
      body: Observer(
          builder: (context) => Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/beach.png'),
                        fit: BoxFit.fitHeight)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 70.0),
                      child: Text(
                        'Clique no Pokémon para fazê-lo ganhar experiência!',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: TextButton(
                            onPressed: () {
                              controller.dimTamanhoPika();
                              controller.evoluiPika(
                                '${controller.url}/pika.png',
                                '${controller.url}/raichu.png',
                              );
                            },
                            child: Image.asset(
                              controller.img,
                              scale: controller.escalaPika,
                            )),
                      ),
                    ),
                    controller.msg.isEmpty
                        ? SizedBox()
                        : Padding(
                            padding: const EdgeInsets.only(top: 67.5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                controller.msg,
                                style: const TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                  ],
                ),
              )),
    );
  }
}
