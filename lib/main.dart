import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "A melhor vingança que existe é ser feliz.",
    "Deixe as pessoas melhores do que quando você as encontrou.",
    "Não deixe o dia de ontem ocupar muito do seu hoje.",
    "Nunca se torne um escravo da visão de sucesso que a sociedade criou.",
    "Pausar conscientemente antes de reagir é um superpoder.",
    "Desenvolvimento pessoal não é egoísta. O mundo precisa de você no seu auge.",
    "Quando você lê um livro faça de conta que o autor é o seu mentor, isso muda completamente a experiência.",
    "Você acorda cedo porque quer ou acorda cedo porque precisa?",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tweets do Pinho"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity, // 100% do espaço disponível ou utilizar a classe Center
          // decoration:
          //     BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // rounded image Image.asset("images/pinho.jpg")
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/pinho.jpg"),
                        fit: BoxFit.cover)),
              ),
              Text(
                _fraseGerada,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                )
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                child: Text("Nova Frase")
              )
            ],
          ),
        ),
      ),
    );
  }
}
