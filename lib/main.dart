import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "O Brasil será HEXA em 2022.",
    "Um salve para todos os fifeiros. Viva a web pelada ;9",
    "Michelle eu te amo!",
    "FLAMENGO.",
    "Naruto é melhor que Dragon Ball.",
    "Minecraft é um jogo atemporal.",
    "Michelle eu te amo cada vez mais!",
    "Quem é esse tal de P que sempre dá assistência pro Hulk?.",
    "87 é do Sport.",
    "Wright estava certo.",
    "F*deu, ano que vem tem Física 3.",
    "Pizza.",
    "O JOGO."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
