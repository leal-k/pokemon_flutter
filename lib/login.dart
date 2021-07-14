// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String user = '';
  String senha = '';
  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/img/logo1.png'),
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      TextField(
                        //começo email
                        onChanged: (text) {
                          user = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'User',
                          border: OutlineInputBorder(),
                        ),
                      ), // fim email
                      Padding(
                        //começo senha
                        padding: const EdgeInsets.only(top: 50.0),
                        child: TextField(
                          onChanged: (text) {
                            senha = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Senha',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ), //fim senha
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red)),
                          onPressed: () {
                            user == 'ashketchum' && senha == 'catchemall'
                                ? Navigator.of(context)
                                    .pushReplacementNamed('/out')
                                : showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                      title: Text('Mensagem de erro'),
                                      content: Text('Usuário não existe'),
                                    ),
                                  );
                          },
                          child: Text('Login'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: FloatingActionButton(
                            child: Icon(Icons.help),
                            backgroundColor: Colors.red,
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  title: Text('Ajuda'),
                                  content: Text(
                                      'Este é um jogo baseado na série de Pokémon. Faça login para jogar!'),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ), // fim senha
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/img/bg.png', fit: BoxFit.cover)),
          Container(
            color: Colors.black.withOpacity(0.35),
          ),
          _body(),
        ],
      ),
    );
  }
}
