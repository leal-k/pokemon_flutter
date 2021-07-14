//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
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
                  }),
              ListTile(
                  leading: Icon(Icons.local_fire_department_outlined),
                  title: Text('Charmander'),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/char');
                  }),
              ListTile(
                  leading: Icon(Icons.water),
                  title: Text('Squirtle'),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/squ');
                  }),
              ListTile(
                  leading: Icon(Icons.grass_outlined),
                  title: Text('Bulbassauro'),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/bul');
                  }),
              ListTile(
                  leading: Icon(Icons.bolt_outlined),
                  title: Text('Pikachu'),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/pika');
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
          backgroundColor: Colors.red,
          title: const Text('Laboratório'),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  //repeat: ImageRepeat.repeat,
                  image: AssetImage('assets/img/lab.jpg'))),
          width: double.infinity,
          height: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            //Text('Contador: $count', style: TextStyle(fontSize: 20)),
            const Padding(
              padding: EdgeInsets.only(top: 115),
              child: Text(
                  'Nesta página você seleciona o pokémon que irá evoluir dentre os abaixo:',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/char');
                          },
                          child: Image.asset('assets/img/charmander.png')),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/squ');
                            print('fui clicado');
                          },
                          child: Image.asset('assets/img/squirtle.png')),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/bul');
                            print('fui clicado');
                          },
                          child: Image.asset('assets/img/bulba.png')),
                    ),
                  ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 130,
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/pika');
                        print('fui clicado');
                      },
                      child: Image.asset('assets/img/pika.png')),
                ),
              ],
            )
          ]),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: FloatingActionButton(
            child: Icon(Icons.help_outline),
            backgroundColor: Colors.grey,
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => const AlertDialog(
                  title: Text('Ajuda'),
                  content: Text(
                      'Nesta tela você escolherá um dos pokémons na tela para iniciar sua jornada! \n\nClique em um para ser levado até a tela de jogo.'),
                ),
              );
            },
          ),
        ));
  }
}
