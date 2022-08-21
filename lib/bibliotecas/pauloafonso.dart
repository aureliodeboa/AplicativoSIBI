import 'package:flutter/material.dart';
class pauloafonso extends StatefulWidget {
  const pauloafonso({Key? key}) : super(key: key);

  @override
  State<pauloafonso> createState() => _pauloafonsoState();
}

class _pauloafonsoState extends State<pauloafonso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body: Column(
        children: [
          Text('Biblioteca Campus Paulo Afonso',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber, fontSize: 30,)),
          Container(child: Image.asset('imagem/pauloafonso.png'),),
          Text('Responsável: Jaqueline Silva de Souza (Bibliotecária - Biblioteca de Paulo Afonso)'
              ' Endereço: Avenida da Amizade, s/n Bairro: Sal Torrado '
              ' Paulo Afonso-BA, CEP: 48607-190 '
              ' Telefone: 75 3282-3459 '
              'E-mail: biblioteca.paf@univasf.edu.br'
              'Equipe: Assistente em Administração: Lorena Carvalho de Morais Sandes'
              'Atendente Lucicleidi Vitória de Freitas', style: TextStyle( fontSize: 15)),
        ],
      ),

    );
  }
}
